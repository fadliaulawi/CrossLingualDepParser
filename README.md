# Cross-lingual Transfer Learning for Javanese Dependency Parsing

This repo contains the code and models for the AACL-SRW 2023 paper: "Cross-lingual Transfer Learning for Javanese Dependency Parsing" [[arxiv]](https://arxiv.org/abs/2401.12072) [[paper]](https://aclanthology.org/2023.ijcnlp-srw.1)

This is build based upon [NeuroNLP2](https://github.com/XuezheMax/NeuroNLP2) and PyTorch-0.3.

----------

# Easy Running Steps

We prepare some easy-to-run example scripts.

### Easy preparing
* (**Note**): The data-preparation script requires Python3. (while the rest main running after requires Python2)
* For easy preparing, simply run [`examples/run_more/go_data.sh`](examples/run_more/go_data.sh).  This is an one-step script to get and prepare all the data (might need much disk space, majorly for embeddings files).

### Running Environment
* This implementation should run in Python2 + Pytorch0.3, our suggestion is to use conda to install the required environment:
* `conda create -n myenv python=2.7; source activate myenv; conda install gensim;`
* `conda install pytorch=0.3.1 cuda80 -c pytorch`

### Easy running
* (Step 0): make a new DIR and cd into it, so that now data is at `../data2.2_more/` and source codes are at `../src/`. 
* (Step 1): for building vocabs, run [`examples/run_more/go_vocab.sh`](examples/run_more/go_vocab.sh).
* (Step 2): for training (SelfAtt-Graph for example, see previous scripts for the settings of other models), run [`examples/run_more/go_train.sh`](examples/run_more/go_train.sh).
* (Step 3): for testing, run [`examples/run_more/go_test.sh`](examples/run_more/go_test.sh).

----------

# Details

The rest provides more details for the steps of the runnings.

### Data Preparation
* The data format is basically CoNLL-U Fomat ([here](https://universaldependencies.org/format.html)) in UD v2.2, but with some crucial differences:
* Firstly, all comments (starts with #) and non-integer lines (multiword or empty tokens) should be removed.
* Moreover, the POS are read from Column 5 instead of Column 4, a simple movement is needed.
* Aligned cross-lingual embeddings are required for inputs. We use the old version of fasttext embeddings and [fastText_multilingual](https://github.com/Babylonpartners/fastText_multilingual) for alignment.
* Please refer to [`examples/run_more/prepare_data.py`](examples/run_more/prepare_data.py) for the data preparation step.

### Training and Testing
* We provide exampling scripts for training and testing, please follow those examples (some of the paths in the scripts are specific to our environment, you may need to set up the correct paths).
* ---
* Step 1: build dictionaries (see [`examples/run_more/prepare_vocab.sh`](examples/run_more/prepare_vocab.sh)). This step will build the vocabs (use [`examples/vocab/build_joint_vocab_embed.py`](examples/vocab/build_joint_vocab_embed.py)) for the source language together with source embeddings.
* Step 2: train the models (see `examples/run_more/train_*.sh`) on the source language. Here, we have four types of models correspoding to those in our paper, the names are slightly different, here are the mappings: `SelfAttGraph`->[`train_graph.sh`](examples/run_more/train_graph.sh), `RNNGraph`->[`train_graph_rnn.sh`](examples/run_more/train_graph_rnn.sh), `SelfAttStack`->[`train_stptr.sh`](examples/run_more/train_stptr.sh), `RNNStack`->[`train_stptr_rnn.sh`](examples/run_more/train_stptr_rnn.sh).
* Extra: for these scripts, the file paths should be changed to the correct ones: `--word_path` for embedding file, `--train --dev --test` for corresponding data files.
* Step 3: testing with the trained models (see [`examples/run_more/run_analyze.sh`](examples/run_more/run_analyze.sh)). Also, the paths for extra language data (`--test`) and extra language embeddings (`--extra_embed`) should be set correspondingly.
* ---
* Warning: the embeddings of zh and ja are not well aligned, and our paper reports de-lexicalized results, which can be obtained by adding the flag `--no_word` both for training and testing.
* Warning2: the outputs do not keep the original ordering of the input file, and are sorted by sentence length. Both the system output and gold parses in the new ordering are outputted (*_pred, *_gold).

----------

# Citation

If you find this repo useful, please cite our paper.

```
@inproceedings{ghiffari-etal-2023-cross,
    title = "Cross-lingual Transfer Learning for {J}avanese Dependency Parsing",
    author = "Ghiffari, Fadli Aulawi Al  and
      Alfina, Ika  and
      Azizah, Kurniawati",
    editor = "Li, Dongfang  and
      Mahendra, Rahmad  and
      Tang, Zilu Peter  and
      Jang, Hyeju  and
      Murawaki, Yugo  and
      Wong, Derek Fai",
    booktitle = "Proceedings of the 13th International Joint Conference on Natural Language Processing and the 3rd Conference of the Asia-Pacific Chapter of the Association for Computational Linguistics: Student Research Workshop",
    month = nov,
    year = "2023",
    address = "Nusa Dua, Bali",
    publisher = "Association for Computational Linguistics",
    url = "https://aclanthology.org/2023.ijcnlp-srw.1",
    doi = "10.18653/v1/2023.ijcnlp-srw.1",
    pages = "1--9",
}
```
