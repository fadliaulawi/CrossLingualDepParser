#!/usr/bin/env bash

# build
embed_path=../data2.2_more/
embed_path1=$embed_path/wiki.fr.vec
data_path=../data2.2_more/
data0=$data_path/fr_train.conllu
data1=$data_path/fr_dev.conllu
data2=$data_path/fr_test.conllu

PYTHONPATH=../src/ CUDA_VISIBLE_DEVICES=1 python2 ../src/examples/vocab/build_joint_vocab_embed.py \
--embed_paths $embed_path1 \
--embed_lang_ids fr \
--data_paths $data0 $data1 $data2 \
--model_path ./model/
