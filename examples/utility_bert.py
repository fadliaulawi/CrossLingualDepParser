import argparse

from transformers import BertModel, BertTokenizer

def main():
    args_parser = argparse.ArgumentParser(description='Embedding and tokenizing with BERT')
    args_parser.add_argument('--path', help='path for sentences files to be embedded/tokenized')
    args_parser.add_argument('--act_type', choices=['tokenize', 'embed'], help='type of action')

    if act_type == 'embed':
        model = BertModel.from_pretrained('../../data2.2_more/javanese-bert-small', local_files_only=True, output_hidden_states=True)
        model.eval()
        
        with open("embed.txt", encoding='utf-8') as f:
            lines = f.readlines()
            input_word = [[eval(l) for l in line.split(',')] for line in lines]

        tokens = []
        for iw in input_word:
            tokens_tensor = torch.tensor([iw])
            segments_tensors = torch.tensor([[1] * len(iw)])

            with torch.no_grad():
                hidden_states = model(tokens_tensor, segments_tensors)[2]

                token_embeddings = torch.stack(hidden_states, dim=0)
                token_embeddings = torch.squeeze(token_embeddings, dim=1)
                token_embeddings = token_embeddings.permute(1,0,2)

                token_vecs_sum = []
                for token in token_embeddings:
                    # sum_vec = torch.sum(token[-4:], dim=0)
                    cat_vec = torch.cat((token[-1], token[-2], token[-3], token[-4]), dim=0)
                    token_vecs_sum.append(cat_vec)

            tokens.append(token_vecs_sum)

        with open("embed_res.txt", encoding='utf-8', 'w') as f:
            output_word = [','.join([str(t) for t in token]) for token in tokens]
            f.write('\n'.join(output_word))

    else:

        tokenizer = BertTokenizer.from_pretrained('../../data2.2_more/javanese-bert-small', local_files_only=True)

        # read files to input_text
        for text in input_text:

            marked_text = "[CLS]" + text
            tokenized_text = marked_text.split()
            indexed_tokens = tokenizer.convert_tokens_to_ids(tokenized_text)
        
if __name__ == '__main__':
    main()
