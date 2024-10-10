#!/bin/bash

# Define the ROS 2 distribution
DISTRO=humble

# Update package list
apt-get update

# Install Gazebo and related ROS 2 packages
apt-get install -y \
    ros-$DISTRO-gazebo-ros-pkgs \
    ros-$DISTRO-gazebo-ros2-control \
    ros-$DISTRO-gazebo-ros \
    ros-$DISTRO-gazebo-msgs \
    ros-$DISTRO-ros2-control \
    ros-$DISTRO-ros2-controllers \
    ros-$DISTRO-robot-state-publisher \
    ros-$DISTRO-joint-state-publisher \
    ros-$DISTRO-joint-state-publisher-gui \
    ros-$DISTRO-ros-bridge-server \
    ros-$DISTRO-ros-gz \
    gazebo11-plugin-base \
    gazebo11-common \
    gazebo11 \
    gazebo11-sim \
    && rm -rf /var/lib/apt/lists/*

# Clean up
apt-get autoremove -y

echo "ROS 2 Gazebo installation complete."
