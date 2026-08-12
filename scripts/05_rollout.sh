#!/bin/bash

uv run lerobot-rollout \
  --strategy.type=base \
  --policy.path=mikami235/act_so101_pick_place_30ep_v060_01 \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=so101_follower \
  --robot.cameras="{top: {type: opencv, index_or_path: /dev/video0, fourcc: MJPG, width: 640, height: 480, fps: 30}, side: {type: opencv, index_or_path: /dev/video2, fourcc: MJPG, width: 640, height: 480, fps: 30}}" \
  --task="Pick up the object and place it in the target area" \
  --duration=15 \
  --display_data=false
