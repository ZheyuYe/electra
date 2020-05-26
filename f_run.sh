#!/bin/bash
#run finetuning script
export TF_FORCE_GPU_ALLOW_GROWTH="true"

horovodrun -np 1 -H localhost:1 python3 run_finetuning.py \
    --data-dir /home/ubuntu/enlei_electra/ \
    --gpu-list 0 \
    --model-name electra_small_owt \
    --hparams finetune_config.json \
