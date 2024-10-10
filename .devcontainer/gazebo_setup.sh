#!/bin/bash

# Define the ROS 2 distribution
DISTRO=humble

# Update package list
sudo apt update

# Install Gazebo and related ROS 2 packages
sudo apt install -y \
    ros-$DISTRO-gazebo-ros-pkgs \
    ros-$DISTRO-gazebo-ros2-control \
    ros-$DISTRO-gazebo-ros \
    ros-$DISTRO-gazebo-msgs \
    ros-$DISTRO-ros2-control \
    ros-$DISTRO-ros2-controllers \
    ros-$DISTRO-robot-state-publisher \
    ros-$DISTRO-joint-state-publisher \
    ros-$DISTRO-joint-state-publisher-gui \
    ros-$DISTRO-ros-bridge-server

# Install Gazebo model packages (optional)
sudo apt install -y \
    gazebo11-plugin-base \
    gazebo11-common \
    gazebo11 \
    gazebo11-sim

# Clean up
sudo apt autoremove -y

echo "ROS 2 Gazebo installation complete."
