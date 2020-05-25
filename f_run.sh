#!/bin/bash
#run finetuning script
export TF_FORCE_GPU_ALLOW_GROWTH="true"

horovodrun -np 4 -H localhost:4 python3 run_finetuning.py \
    --data-dir /home/ubuntu/enlei_electra/ \
    --model-name electra_small_owt \
    --hparams squad_config.json \
