# Dockerfile for Ubuntu 22.04 and ROS 2 essentials

# Base image with Ubuntu 22.04
FROM ubuntu:22.04

# Set environment variables for non-interactive apt installations
ENV DEBIAN_FRONTEND=noninteractive

# Update and install essential tools 
COPY ./install_dependencies.sh /tmp/install_dependencies.sh
COPY ./ros_stuffs.sh /tmp/ros_stuffs.sh
COPY ./create_package.sh /tmp/setup_ros_workspace.sh 
COPY ./gazebo_setup.sh /tmp/install_ros2_gazebo.sh


# Make the scripts executable
RUN chmod +x /tmp/*.sh

#GUI
COPY GUI.sh /usr/local/bin/gui_support.sh
RUN chmod +x /usr/local/bin/gui_support.sh

RUN /tmp/install_dependencies.sh
RUN /tmp/ros_stuffs.sh
RUN /tmp/setup_ros_workspace.sh
RUN /tmp/install_ros2_gazebo.sh

# Set up a default user (optional, change username as needed)
#RUN useradd -ms /bin/bash user && \
   # echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

#USER user
#WORKDIR /home/user

# Setup entrypoint
#CMD ["/bin/bash"]
CMD ["/usr/local/bin/gui_support.sh", "/bin/bash"] #GUI
