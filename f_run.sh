#!/bin/bash
#run finetuning script

python3 run_finetuning.py \
    --data-dir /home/ubuntu/enlei_electra/ \
    --model-name electra_small_owt \
    --hparams squad_config.json \
