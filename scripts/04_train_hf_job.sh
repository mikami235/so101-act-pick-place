#!/bin/bash

uv run lerobot-train \
  --dataset.repo_id=mikami235/so101_pick_place_30ep_v060_01_20260810_113739 \
  --policy.type=act \
  --policy.repo_id=mikami235/act_so101_pick_place_30ep_v060_01 \
  --output_dir=outputs/train/act_so101_pick_place_30ep_v060_01 \
  --job_name=act_so101_pick_place_30ep_v060_01 \
  --policy.device=cuda \
  --batch_size=8 \
  --steps=30000 \
  --wandb.enable=false \
  --job.target=t4-small \
  --job.timeout=8h
