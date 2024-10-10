#!/bin/bash
set -e


# Install ROS 2 GPG key and add repository for ROS 2
curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add - && \
echo "deb http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/ros2-latest.list

# Install ROS 2
apt-get update && \
apt-get install -y \
    ros-humble-desktop \
    ros-humble-xacro \
    ros-humble-ros2-control \
    ros-humble-ros2-controllers \
    python3-colcon-common-extensions \
    && rm -rf /var/lib/apt/lists/*

# Source ROS 2 setup for future commands
echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc


