#!/bin/bash

#python sklearn_classifiers/run_training.py \ 
#    --train_dataset csv_files/example_20packets.csv \  
#    --target_column ndpi_category \
#    --continuous#!/bin/bash

MODEL_TIME_ID=$1

#export CUDA_VISIBLE_DEVICES=4

export DATA_DIR="$PWD/tests/static/raw_csv/example_raw_20packets.csv"
#export SAVED_DIR="$PWD/results/sentihood/NLI_M"
#export PRED_DATA_DIR="$PWD/results/sentihood/NLI_M/test_ep_4.txt"

#export VOCAB_DATA = "$PWD/uncased_L-12_H-768_A-12/vocab.txt"
#export CFG_FILE = "$PWD/uncased_L-12_H-768_A-12/bert_config.json"
#export CKP$PWD/csv_files/example_20packets.csvT_FILE = "$PWD/uncased_L-12_H-768_A-12/pytorch_model.bin"



#cd src

echo "Applying model..."
python train_fsnet.py \
--train_dataset $DATA_DIR \
--target_column ndpi_category \

echo "All done! :)"

