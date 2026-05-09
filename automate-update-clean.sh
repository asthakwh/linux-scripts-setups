#!/bin/bash
#Bash script to automate system updates on Ubuntu systems

echo "Updating package list..."
sudo apt update

echo "Upgrading installed packages..."
sudo apt upgrade -y

echo "Removing unused packages..."
sudo apt autoremove -y

echo "Cleaning package cache..."
sudo apt clean

echo "System update and cleanup completed successfully!"
