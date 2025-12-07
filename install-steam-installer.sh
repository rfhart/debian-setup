#!/bin/bash

# Add Debian non-free repository
line="deb http://deb.debian.org/debian/ trixie main contrib non-free"
file="/etc/apt/sources.list"
grep -Fxq "$line" "$file" || echo "$line" | sudo tee -a "$file"
# echo "deb http://deb.debian.org/debian/ trixie main contrib non-free" | sudo tee -a /etc/apt/sources.list

#enable multiarch
dpkg --add-architecture i386

# Install Steam
apt update
apt install steam-installer -y
apt install mesa-vulkan-drivers libglx-mesa0:i386 mesa-vulkan-drivers:i386 libgl1-mesa-dri:i386 -y
