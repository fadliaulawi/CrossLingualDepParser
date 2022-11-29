#!/usr/bin/env bash

# build
embed_path=../data2.2_more/
embed_path1=$embed_path/wiki.en.vec
embed_path2=$embed_path/wiki.fr.vec
embed_path3=$embed_path/wiki.hr.vec
embed_path4=$embed_path/wiki.id.vec
embed_path5=$embed_path/wiki.it.vec
embed_path6=$embed_path/wiki.jv.vec
embed_path7=$embed_path/wiki.ko.vec

data_path=../data2.2_more/
data0=$data_path/en_train.conllu
data1=$data_path/en_dev.conllu
data2=$data_path/en_test.conllu
data3=$data_path/fr_train.conllu
data4=$data_path/fr_dev.conllu
data5=$data_path/fr_test.conllu
data6=$data_path/hr_train.conllu
data7=$data_path/hr_dev.conllu
data8=$data_path/hr_test.conllu
data9=$data_path/id_train.conllu
data10=$data_path/id_dev.conllu
data11=$data_path/id_test.conllu
data12=$data_path/it_train.conllu
data13=$data_path/it_dev.conllu
data14=$data_path/it_test.conllu
data15=$data_path/jv_train.conllu
data16=$data_path/jv_dev.conllu
data17=$data_path/jv_test.conllu
data18=$data_path/ko_train.conllu
data19=$data_path/ko_dev.conllu
data20=$data_path/ko_test.conllu

PYTHONPATH=../src/ CUDA_VISIBLE_DEVICES=1 python3 ../src/examples/vocab/build_joint_vocab_embed.py \
--embed_paths $embed_path1 $embed_path2 $embed_path3 $embed_path4 $embed_path5 $embed_path6 $embed_path7 \
--embed_lang_ids en fr hr id it jv ko \
--data_paths $data0 $data1 $data2 $data3 $data4 $data5 $data6 $data7 $data8 $data9 $data10 $data11 $data12 $data13 $data14 $data15 $data16 $data17 $data18 $data19 $data20 \
--model_path ./model/
