model_name="HTL-FR-ID.pt"
code="htl_fr_id"
which_set="test"

PYTHONPATH=../src/ CUDA_VISIBLE_DEVICES=1 python3 ../src/examples/analyze.py --parser biaffine --ordered \
--punctuation 'PUNCT' 'SYM' --out_filename res/res_$code --model_name $model_name \
--test "../data2.2_more/jv_test.conllu" --model_path "./model/" --extra_embed "../data2.2_more/wiki.jv.vec" --gpu
