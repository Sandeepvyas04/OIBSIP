#!/bin/bash

# Test SSH connectivity
echo "Testing SSH connection (should succeed)..."
nc -zv localhost 22

# Test HTTP connectivity
echo -e "\nTesting HTTP connection (should fail)..."
nc -zv localhost 80
