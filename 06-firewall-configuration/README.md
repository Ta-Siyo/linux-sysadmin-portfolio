# Firewall & Security Hardening ( UFW + Fail2Ban )

## Overview
This project demonstraties Lnux system security hardening using UFW firewall 
and Fail2Ban to protect SSH access

---

## Tool Used
- UFW (Uncomplicated Firewall)
- Fail2Ban
- OpenSSH

---

## Security Steps Performed

### 1. Firewall Configuration (UFW)
- Allowed SSH on port 22
- Denied all incoming traffic by default
- Allowed all outgoing traffic
- Enabled firewall
- Limited SSH login attempts to prevent brute-force attacks

### 2. SSH Hardening
- Disabled root login
- Secured SSH configuration in `/etc/ssh/sshd_config`
- Restarted SSH service after changes

### 3. Fail2Ban Protection
- Enabled SSH jail
- Monitored failed login attempts
- Automatically blocks suspicious IPs after repeated failures

---

### Commands Used

``` bash
sudo ufw allow 22/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
sudo ufw limit 22/tcp

sudo systemctl restart sshd
sudo systemctl status sshd
sudo fail2ban-client status sshd
