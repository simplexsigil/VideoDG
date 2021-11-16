#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=0,1,2,3 python main_val.py \
    something RGB \
    --mode train \
    --train_list "home/david/datasets/sims_dataset/frames_list.txt" \
    --val_list "/home/david/datasets/sims_dataset/frames_list.txt"  \
    --test_list "/media/david/damysus/datasets/adl/adl_sims_list.txt /media/david/damysus/datasets/adl/adl_sims_list.txt" \
    --num_class 12 \
    --arch resnet50 \
    --num_segments 5 \
    --consensus_type APN \
    --batch-size 40 \
    --snapshot_pref test \
    --lr 0.001 \
    --gd 20 \
    --alpha 0.01

# data_list/ucf_train.txt \
# data_list/ucf_val.txt
# data_list/hmdb_train.txt data_list/hmdb_val.txt