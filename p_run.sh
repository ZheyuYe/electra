#!/bin/bash
#run pretraining script

horovodrun -np 4 -H localhost:4 \
  python3 run_pretraining.py \
    --data-dir /home/ubuntu/electra_data/ \
    --model-name electra_small_owt \
    --hparams '{"train_batch_size":128}'
