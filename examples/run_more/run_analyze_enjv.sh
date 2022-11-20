model_name="B_EN_JV.pt"
cur_lang="enjv"
which_set="test"

PYTHONPATH=../src/ CUDA_VISIBLE_DEVICES=1 python3 ../src/examples/analyze.py --parser biaffine --ordered \
--punctuation 'PUNCT' 'SYM' --out_filename analyzer.$cur_lang.$which_set.out --model_name $model_name \
--test "../data2.2_more/jv_test.conllu" --model_path "./model/" --extra_embed "../data2.2_more/wiki.jv.vec" --gpu
