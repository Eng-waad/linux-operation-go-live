#!/bin/bash
set -e

PACKAGES="nginx curl htop tree"
SERVICES="nginx"

echo "Updating package lists..."
sudo apt update

echo "Installing packages: $PACKAGES"
sudo apt install -y $PACKAGES

for SERVICE in $SERVICES; do
  echo "Enabling and starting $SERVICE..."
  sudo systemctl enable --now "$SERVICE"
done

echo ""
echo "=== Verification ==="
echo "Nginx status: $(systemctl is-active nginx)"
echo "Nginx enabled: $(systemctl is-enabled nginx)"
echo "Web server test:"
curl -s -o /dev/null -w "  HTTP status: %{http_code}\n" http://localhost

echo ""
echo "Setup complete!"
