model_name="network.pt"
cur_lang="en"
which_set="test"

PYTHONPATH=../src/ CUDA_VISIBLE_DEVICES=$RGPU python2 ../src/examples/analyze.py --parser biaffine --ordered --gpu \
--punctuation 'PUNCT' 'SYM' --out_filename analyzer.$cur_lang.out --model_name $model_name \
--test "../data2.2_more/${cur_lang}_${which_set}.conllu" --model_path "./model/" --extra_embed "../data2.2_more/wiki.multi.${cur_lang}.vec"
