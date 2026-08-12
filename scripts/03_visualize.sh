#!/bin/bash

DATASET="mikami235/so101_pick_place_30ep_v060_01_20260810_113739"

uv run lerobot-dataset-viz \
  --repo-id "$DATASET" \
  --episode-index 29
