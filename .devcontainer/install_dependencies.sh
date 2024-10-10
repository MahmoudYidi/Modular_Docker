#!/bin/bash
set -e

# Install necessary tools and dependencies for ROS 2 and GUI support
# Update and install essential tools
apt-get update && \
apt-get install -y --no-install-recommends \
    sudo \
    curl \
    wget \
    git \
    build-essential \
    apt-transport-https \
    ca-certificates \
    gnupg \
    lsb-release \
    software-properties-common \
    python3 \
    python3-pip \
    x11-apps \
    && rm -rf /var/lib/apt/lists/*


