model_name="FS.pt"
code="fs"
which_set="test"

PYTHONPATH=../srcwv/ CUDA_VISIBLE_DEVICES=1 python2 ../src/examples/analyze.py --parser biaffine --ordered \
--punctuation 'PUNCT' 'SYM' --out_filename res/res_$code --model_name $model_name \
--test "../data2.2_more/jv_test.conllu" --model_path "./model/" --gpu

model_name="HTL-EN-ID.pt"
code="htl_en_id"
which_set="test"

PYTHONPATH=../srcwv/ CUDA_VISIBLE_DEVICES=1 python2 ../src/examples/analyze.py --parser biaffine --ordered \
--punctuation 'PUNCT' 'SYM' --out_filename res/res_$code --model_name $model_name \
--test "../data2.2_more/jv_test.conllu" --model_path "./model/" --gpu

model_name="TL-EN.pt"
code="tl_en"
which_set="test"

PYTHONPATH=../srcwv/ CUDA_VISIBLE_DEVICES=1 python2 ../src/examples/analyze.py --parser biaffine --ordered \
--punctuation 'PUNCT' 'SYM' --out_filename res/res_$code --model_name $model_name \
--test "../data2.2_more/jv_test.conllu" --model_path "./model/" --gpu

model_name="HTL-FR-ID.pt"
code="htl_fr_id"
which_set="test"

PYTHONPATH=../srcwv/ CUDA_VISIBLE_DEVICES=1 python2 ../src/examples/analyze.py --parser biaffine --ordered \
--punctuation 'PUNCT' 'SYM' --out_filename res/res_$code --model_name $model_name \
--test "../data2.2_more/jv_test.conllu" --model_path "./model/" --gpu

model_name="TL-HR.pt"
code="tl_hr"
which_set="test"

PYTHONPATH=../srcwv/ CUDA_VISIBLE_DEVICES=1 python2 ../src/examples/analyze.py --parser biaffine --ordered \
--punctuation 'PUNCT' 'SYM' --out_filename res/res_$code --model_name $model_name \
--test "../data2.2_more/jv_test.conllu" --model_path "./model/" --gpu

model_name="TL-ID.pt"
code="tl_id"
which_set="test"

PYTHONPATH=../srcwv/ CUDA_VISIBLE_DEVICES=1 python2 ../src/examples/analyze.py --parser biaffine --ordered \
--punctuation 'PUNCT' 'SYM' --out_filename res/res_$code --model_name $model_name \
--test "../data2.2_more/jv_test.conllu" --model_path "./model/" --gpu

model_name="HTL-IT-ID.pt"
code="htl_it_id"
which_set="test"

PYTHONPATH=../srcwv/ CUDA_VISIBLE_DEVICES=1 python2 ../src/examples/analyze.py --parser biaffine --ordered \
--punctuation 'PUNCT' 'SYM' --out_filename res/res_$code --model_name $model_name \
--test "../data2.2_more/jv_test.conllu" --model_path "./model/" --gpu

model_name="TL-KO.pt"
code="tl_ko"
which_set="test"

PYTHONPATH=../srcwv/ CUDA_VISIBLE_DEVICES=1 python2 ../src/examples/analyze.py --parser biaffine --ordered \
--punctuation 'PUNCT' 'SYM' --out_filename res/res_$code --model_name $model_name \
--test "../data2.2_more/jv_test.conllu" --model_path "./model/" --gpu

