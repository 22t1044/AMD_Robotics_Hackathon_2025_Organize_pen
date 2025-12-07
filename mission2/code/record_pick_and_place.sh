#!/bin/bash

# Robot configuration
ROBOT_TYPE="so101_follower"
ROBOT_PORT="/dev/ttyACM1"
ROBOT_ID="my_awesome_follower_arm"
CAMERAS="{ front: {type: opencv, index_or_path: 4, width: 1920, height: 1080, fps: 5},top: {type: opencv, index_or_path: 6, width: 640, height: 480, fps: 30}}"

# Teleoperation configuration (Leader robot)
TELEOP_TYPE="so101_leader"
TELEOP_PORT="/dev/ttyACM0"
TELEOP_ID="my_awesome_leader_arm"

# Dataset configuration
DATASET_REPO_ID="22t1044/record-red-pen10"
DATASET_SINGLE_TASK="Grab the black cube"
DATASET_NUM_EPISODES=20
DATASET_EPISODE_TIME_S=30
DATASET_RESET_TIME_S=5

# Display data flag
DISPLAY_DATA=true

# Execute the lerobot-record command with the configured settings
lerobot-record \
  --robot.type=${ROBOT_TYPE} \
  --robot.port=${ROBOT_PORT} \
  --robot.id=${ROBOT_ID} \
  --robot.cameras=${CAMERAS} \
  --teleop.type=${TELEOP_TYPE} \
  --teleop.port=${TELEOP_PORT} \
  --teleop.id=${TELEOP_ID} \
  --display_data=${DISPLAY_DATA} \
  --dataset.repo_id=${DATASET_REPO_ID} \
  --dataset.num_episodes=${DATASET_NUM_EPISODES} \
  --dataset.single_task="${DATASET_SINGLE_TASK}" \
  --dataset.episode_time_s=${DATASET_EPISODE_TIME_S} \
  --dataset.reset_time_s=${DATASET_RESET_TIME_S}
