#!/bin/bash

# Update and upgrade system packages
sudo apt update && sudo apt upgrade -y

# Install required packages
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.10 python3-pip

# Install Python packages using pip
sudo pip install requests asyncio loguru websockets_proxy fake_useragent
sudo pip uninstall websockets -y
sudo pip install websockets==12.0
