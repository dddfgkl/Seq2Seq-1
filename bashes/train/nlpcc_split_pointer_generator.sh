#!/usr/bin/env bash
cd ../..
python3 train.py\
    --model_class pointer_generator\
    --batch_size 32\
    --hidden_units 300\
    --embedding_size 300\
    --attention_units 250\
    --encoder_depth 3\
    --decoder_depth 3\
    --encoder_max_time_steps 1000\
    --decoder_max_time_steps 60\
    --display_freq 5\
    --save_freq 1000\
    --valid_freq 400\
    --model_dir checkpoints/nlpcc_split_pointer_generator\
    --model_name lcsts.ckpt\
    --source_vocabulary dataset/nlpcc/articles_vocabs.json\
    --target_vocabulary dataset/nlpcc/summaries_vocabs.json\
    --source_train_data dataset/nlpcc/sources.train.txt\
    --target_train_data dataset/nlpcc/summaries.train.txt\
    --source_valid_data dataset/nlpcc/sources.eval.txt\
    --target_valid_data dataset/nlpcc/summaries.eval.txt\
    --encoder_vocab_size 30000\
    --decoder_vocab_size 30000\
    --cell_type gru\
    --max_epochs 100000\
    --extend_vocabs True\
    --split_vocabs True\