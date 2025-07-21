#!/bin/bash

# Basic UFW Firewall Configuration Script
# Author: [Your Name]
# Date: $(date +%Y-%m-%d)

# Update package lists and install UFW
echo "Updating packages and installing UFW..."
sudo apt update
sudo apt install ufw -y

# Set default policies
echo "Configuring default policies..."
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Configure specific rules
echo "Setting up firewall rules..."
sudo ufw allow ssh        # Allow SSH connections
sudo ufw deny http        # Deny HTTP traffic
# sudo ufw allow 22/tcp   # Alternative SSH rule
# sudo ufw deny 80/tcp    # Alternative HTTP rule

# Enable firewall
echo "Enabling UFW firewall..."
sudo ufw enable

# Display final configuration
echo "Firewall configuration complete. Current status:"
sudo ufw status verbose
