#!/bin/bash
set -euo pipefail

echo "Install pip and expect in the container"
apt update
apt install python3-pip -y
apt install expect -y

ls ~/
cd /github/workspace
echo "Original PATH variable in the container"
echo $PATH

echo "Updated PATH variable in the container"
export PATH=$PATH:/root/os161/tools/bin
echo $PATH

# Set (or re-set) the HOME variable otherwise 
# GitHub will set it to HOME = "/github/home/"
export HOME="/root"

echo "Remove old binary files"
rm /root/os161/root/testbin/*
rm /root/os161/root/kernel*


echo "Building OS/161"
# Build OS/161 for assignment ASST#
./cleanup_before_committing 2
./build_os161 2

# Run the OS/161 kernel with the hello program
./expect_run_hello.exp 

# Test 
# grep -q "Hello CSE4001" /root/os161/root/output.txt && exit 0 || exit 1

# Returns fail if test binary is not present (likely because it wasn't buit due to errors)
# grep -q "No such file or directory" /root/os161/root/output.txt && exit 1 || exit 0

test -f /root/os161/root/output.txt && ! grep -q "No such file or directory" /root/os161/root/output.txt








