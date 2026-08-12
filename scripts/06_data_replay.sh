cd ~/lerobot-v060
source .venv/bin/activate

uv run lerobot-dataset-viz \
  --repo-id mikami235/so101_pick_place_30ep_v060_01_20260810_113739 \
  --episode-index 29
