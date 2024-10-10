#!/bin/bash

# Create a ROS workspace directory
mkdir -p ~/ros_ws/src

# Change to the workspace directory
cd ~/ros_ws/src

# Clone necessary ROS packages (replace with actual repositories)
# Example: git clone https://github.com/ros2/example_interfaces.git
git clone --branch humble-devel https://github.com/husky/husky.git
git clone --branch main https://github.com/MahmoudYidi/navigros2.git

# Change back to the workspace root
cd ~/ros_ws

# Install dependencies using rosdep
sudo apt-get update
sudo apt-get install -y python3-rosdep
rosdep init
rosdep update
rosdep install --from-paths src --ignore-src -r -y

# Build the ROS workspace
colcon build

# Upgrade pip and install Python dependencies
#pip install --upgrade pip
#pip install -r ./ros2_ws/src/navigros2/requirements.txt
# Source the workspace
source ~/ros_ws/install/setup.bash

# Optionally, add to bashrc to source automatically in future sessions
echo "source ~/ros_ws/install/setup.bash" >> ~/.bashrc

cd
