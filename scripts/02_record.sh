#!/bin/bash

uv run lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \#環境によって変わるため事前確認が必要
  --robot.id=so101_follower \
  --robot.cameras="{top: {type: opencv, index_or_path: /dev/video0, fourcc: MJPG, width: 640, height: 480, fps: 30}, side: {type: opencv, index_or_path: /dev/video2, fourcc: MJPG, width: 640, height: 480, fps: 30}}" \
  --teleop.type=so101_leader \
  --teleop.port=/dev/ttyACM2 \#環境によって変わるため事前確認が必要
  --teleop.id=so101_leader \
  --dataset.repo_id=mikami235/so101_pick_place_30ep_v060_01 \#環境によって変わるため事前確認が必要
  --dataset.num_episodes=30 \
  --dataset.episode_time_s=15 \
  --dataset.reset_time_s=10 \
  --dataset.single_task="Pick up the object and place it in the target area" \
  --display_data=true
