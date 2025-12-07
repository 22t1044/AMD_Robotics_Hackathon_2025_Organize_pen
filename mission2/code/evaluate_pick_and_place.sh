#!/bin/bash

# Robot configuration
ROBOT_TYPE="so101_follower"
ROBOT_PORT="/dev/ttyACM1"
ROBOT_ID="my_awesome_leader_arm"
CAMERAS="{ front: {type: opencv, index_or_path: 4, width: 1920, height: 1080, fps: 5},top: {type: opencv, index_or_path: 6, width: 640, height: 480, fps: 30}}"

# Dataset configuration
DATASET_SINGLE_TASK="Pick cube from source position and stack it on the fixed cube at target position"
DATASET_REPO_ID="22t1044/eval_red-pen9"
DATASET_ROOT="${PWD}/eval_redpen9_dataset/"
DATASET_EPISODE_TIME_S=20
DATASET_NUM_EPISODES=1

# Policy configuration
POLICY_PATH="/home/amddemo/lerobot/outputs/train/red-pen9/checkpoints/001000/pretrained_model/"

# Push to hub flag
PUSH_TO_HUB=false

# Execute the lerobot-record command with the configured settings
lerobot-record \
  --robot.type=${ROBOT_TYPE} \
  --robot.port=${ROBOT_PORT} \
  --robot.id=${ROBOT_ID} \
  --robot.cameras=${CAMERAS} \
  --dataset.single_task="${DATASET_SINGLE_TASK}" \
  --dataset.repo_id=${DATASET_REPO_ID} \
  --dataset.root=${DATASET_ROOT} \
  --dataset.episode_time_s=${DATASET_EPISODE_TIME_S} \
  --dataset.num_episodes=${DATASET_NUM_EPISODES} \
  --policy.path=${POLICY_PATH} \
  --dataset.push_to_hub=${PUSH_TO_HUB}
