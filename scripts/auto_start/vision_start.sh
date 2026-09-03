#!/bin/bash
source /opt/ros/noetic/setup.bash
source ~/rm_ws/devel/setup.bash
source /home/dynamicx/intel/openvino_2022/setupvars.sh
source ~/environment.sh
if [[ $HAS_SWITCH == has ]]; then
  export ROS_IP=192.168.100.2
else
  export ROS_IP=127.0.0.1
fi
mkdir /home/dynamicx/Documents/vision_logs/$(date +%Y%m%d)
mon launch --disable-ui --log=/home/dynamicx/Documents/vision_logs/$(date +%Y%m%d)/$(date +%Y%m%d_%H%M%S).log rm_bringup vision_start.launch


