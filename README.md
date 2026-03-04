# Linux Operation Go Live 

## Overview

This lab simulates preparing a fresh Ubuntu server for production.

The goal was to install a full application stack, configure services, automate the setup process, and generate a deployment report.

---

##  Technologies Used

- Ubuntu Linux
- APT Package Manager
- systemd (service management)
- Bash scripting
- Nginx (web server)
- PostgreSQL (database)

---

##  Part 1 – Package Management

- Updated package lists using apt update
- Installed nginx, postgresql, curl, htop, tree
- Practiced remove, purge, autoremove
- Inspected installed packages with dpkg

---

##  Part 2 – Service Management

- Managed services using systemctl
- Learned difference between:
  - installed vs running
  - running vs enabled
- Viewed logs using journalctl
- Simulated service failure and recovery

---

##  Part 3 – Bash Automation

### system-info.sh
Displays system information dynamically.

### setup-server.sh
Automates:
- Package installation
- Service enable & start
- Verification with HTTP status check

### deployment-report.txt
Auto-generated report containing:
- Installed packages
- Service status
- Web server test result

---

##  Bonus Challenges

✔ Version check script  
✔ Service watchdog script  
✔ Package audit one-liner  
✔ Argument-driven setup script  

---

##  Screenshots

See /screenshots folder for:

- Nginx active and enabled
- Web server response
- Final verification output
- Script permissions



