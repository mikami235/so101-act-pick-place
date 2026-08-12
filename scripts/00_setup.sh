#!/bin/bash

git clone --branch v0.6.0 \
  https://github.com/huggingface/lerobot.git \
  ~/lerobot-v060

cd ~/lerobot-v060

uv venv --python 3.12
source .venv/bin/activate

uv pip install -e ".[core_scripts,feetech]"
