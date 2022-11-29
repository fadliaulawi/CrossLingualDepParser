#!/usr/bin/env bash

# build
embed_path=../data2.2_more/
embed_path1=$embed_path/wiki.ko.vec
data_path=../data2.2_more/
data0=$data_path/ko_train.conllu
data1=$data_path/ko_dev.conllu
data2=$data_path/ko_test.conllu

PYTHONPATH=../src/ CUDA_VISIBLE_DEVICES=1 python2 ../src/examples/vocab/build_joint_vocab_embed.py \
--embed_paths $embed_path1 \
--embed_lang_ids ko \
--data_paths $data0 $data1 $data2 \
--model_path ./model/
