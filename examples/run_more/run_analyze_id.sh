model_name="network.pt"
cur_lang="id"
which_set="test"

PYTHONPATH=../src/ CUDA_VISIBLE_DEVICES=1 python2 ../src/examples/analyze.py --parser biaffine --ordered \
--punctuation 'PUNCT' 'SYM' --out_filename analyzer.$cur_lang.$which_set.out --model_name $model_name \
--test "../data2.2_more/id_test.conllu" --model_path "./model/" --extra_embed "../data2.2_more/wiki.multi.id.vec"
