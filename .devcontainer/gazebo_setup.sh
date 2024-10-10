#!/bin/bash
set -e

# Define the ROS 2 distribution
DISTRO=humble

# Update package list
apt-get update

# Install Gazebo and related ROS 2 packages
apt-get install -y \
    ros-humble-gazebo-ros-pkgs \
    ros-humble-gazebo-ros2-control \
    ros-humble-gazebo-ros \
    ros-humble-gazebo-msgs \
    ros-humble-ros2-control \
    ros-humble-ros2-controllers \
    ros-humble-robot-state-publisher \
    ros-humble-joint-state-publisher \
    ros-humble-joint-state-publisher-gui \
    ros-humble-ros-bridge-server \
    ros-humble-ros-gz \
    gazebo11-plugin-base \
    gazebo11-common \
    gazebo11 \
    gazebo11-sim \
    && rm -rf /var/lib/apt/lists/*

# Clean up
apt-get autoremove -y

echo "ROS 2 Gazebo installation complete."
