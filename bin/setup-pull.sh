#!/usr/bin/env bash
set -euo pipefail

LOGFILE="/home/temhr/ansi-setup.log"

# Set timezone (systemd only)
if command -v timedatectl >/dev/null 2>&1; then
  sudo timedatectl set-timezone "America/Toronto"
fi

# Update & upgrade system
sudo sh -c "NEEDRESTART_MODE=a date >> $LOGFILE"
sudo DEBIAN_FRONTEND=noninteractive NEEDRESTART_MODE=a apt update >> "$LOGFILE" 2>&1
sudo DEBIAN_FRONTEND=noninteractive NEEDRESTART_MODE=a apt dist-upgrade -y >> "$LOGFILE" 2>&1

# Install required packages
sudo DEBIAN_FRONTEND=noninteractive NEEDRESTART_MODE=a apt install -y git ansible >> "$LOGFILE" 2>&1

# Run ansible-pull
sudo ansible-pull -U https://github.com/temhr/ansilab.git | tee /home/temhr/ansi-init.log

# Ensure logs are written
sync

# Reboot
sudo reboot
