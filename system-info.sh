```bash
#!/bin/bash
set -e

echo "=== System Information ==="
echo "Hostname: $(hostname)"
echo "Date: $(date)"
echo "User: $USER"

UPTIME=$(uptime -p)
MEMORY=$(free -h | awk 'NR==2 {print $3 "/" $2}')
DISK=$(df -h / | awk 'NR==2 {print $5}')
PACKAGES=$(dpkg -l | wc -l)
SERVICES=$(systemctl list-units --type=service --state=running --no-pager | wc -l)

echo "Uptime:        $UPTIME"
echo "Memory:        $MEMORY"
echo "Disk usage:    $DISK"
echo "Packages:      $PACKAGES"
echo "Running svcs:  $SERVICES"
echo "========================="

echo "Script name:   $0"
echo "Arguments:     $#"
echo "Working dir:   $PWD"
