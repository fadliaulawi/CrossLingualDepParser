model_name="network.pt"
cur_lang="id"

python2 ../src/examples/analyze.py --parser biaffine --ordered \
 --punctuation 'PUNCT' 'SYM' \
 --out_filename analyzer.$cur_lang.out \
 --model_name $model_name \
 --test "../data2.2_more/jv_csui-ud-test.conllu" --model_path "./model/" \
 --extra_embed "../data2.2_more/wiki.multi.${cur_lang}.vec"
