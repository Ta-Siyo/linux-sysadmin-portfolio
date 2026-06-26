# Linux System Administrator Portfolio

A hand-on Linux System Administration portfolio demonstrating practical 
skills in user management, web server deploymnet, database administration,
automation, system security, monitoring, and remote server management.

---

## Skills Demonstrated

- Linux  Administration
- User and Group Management
- File Permissions
- Apache Web Server
- MySQL Database Administration
- Bash Scripting
- Cron Automation
- UFW Firewall
- Fail2Ban
- SSH Server Administration
- System Monitoring
- Log Analysis
- Basic Infrastructure Security

---

# Project 1 - User & Permission Management

## Objective

Manage Linux users, groups, permissions, and administrative privileges.

## Tasks Completed

- Created multiple Linux users
- Created developer and administrator groups
- Added users to groups
- Configured directory ownership
- Applied file and directory permissions
- Configured sudo access

## Commands Used

```bash
useradd
groupadd
usermod
passwd
chmod
chown
sudo
```

## Screenshots

- Before permissions
- After permissions
- User and group creation
- Sudo configuration

## Key Concepts

- Read, Write, Execute permissions
- Owner, Group, Others
- Permission bits (755, 700, 644)
- Ownership management

---

# Project 2 - APache Web Server Deployment

## Objective

Deploy a working Apache web server hosting a simple HTML webpage.

## Tasks Completed

- Installed Apache
- Started and enabled Apache service
- Created a sample HTML webpage
- Configured firewall rules
- Tested website locally

## Commands Used

```bash
sudo apt update
sudo apt install apache2
sudo systemctl enable apache2
sudo systemctl start apache2
sudo ufw allow "Apache"
```

## Files

- index.html

## Screenshots

- Apache installation
- Apache service status
- Website running in browser

---

# Project 3 - MySQL Database Administration

## Objective

Install and configure MySQL securely.

## Tasks Completed

- Installed MySQL Server
- Secured installation
- Created database
- Created database user
- Assigned privileges
- Performed database backup
- Tested restore procedure

## SQL Commands

```sql
CREATE DATABASE portfolio_db;

CREATE USER 'tasiyo'@'localhost'
IDENTIFIED BY 'password';

GRANT ALL PRIVILEGES
ON portfolio_db.*
TO 'tasiyo'@'localhost';

FLUSH PRIVILEGES;
```

## Backup

```bash
mysqldump
```

## Restore

```bash
mysql
```

## Screenshots

- Database creation
- User creation
- Backup
- Restore

---

# Project 4 - Automated Backup Script

## Objective

Automate system backups using Bash and Cron.

## Features

- Backup /home
- Compress backup
- Timestamp each backup
- Store backups
- Delete backups older than 7 days

## Script Features

- tar
- gzip
- date
- find

## Cron Job

```cron
0 2 * * * /home/ubuntu/linux-sysadmin-portfolio/project-04-backup-script/backup.sh >> /home/ubuntu/backup.log 2>&1
```

## Screenshots

- Empty backup folder
- Backup created
- Compressed archive
- Cron configuration

---

# Project 5 - Firewall & Security

## Objective

Improve server security using UFW and Fail2Ban

## Task Completed

- Installed UFW
- Installed Fail2Ban
- Allowed SSH
- Configured default firewall policy
- Limited SSH login attempts
- Reviewed firewall rules

## Commands Used

```bash
ufw enable
ufw status
ufw allow 22/tcp
ufw limit 22/tcp
systemctl status fail2ban
```

## Security Improvements

- Firewall enabled
- SSH rate limiting
- Reduced exposed services

## Note

The SSH port remained on the default port (22). THe attempted migration to a
custom port encountered configuration issues in the lab environment, so the
default port was retained while other hardening measures were successfully
implemented.

## Screenshots

- Firewall before
- Firewall after
- Fail2Ban status

---

# Project 6 - System Monitoring

## Objective

Monitor system resources and services.

## Tools

- htop
- top
- netstat
- journalctl

## Monitoring Tasks

- CPU usage
- Memory usage
- Disk usage
- Running processes
- Network connections
- System logs

## Commands

```bash
htop
top
df -h
free -h
netstat -tulnp
journalctl
```

## Screenshots

- CPU monitoring 
- Memory monitoring
- Disk usage
- Network connections
- System logs

---

# Project 7 - SSH Server & Remote Management

## Objective

Configure secure remote administration.

## Tasks Completed

- Installed OpenSSH Server
- Generated SSH key pair
- Configured public key authentication
- Tested SSH connectivity
- Reviewd SSH configuration

## Commands

```bash
ssh-keygen
ssh localhost
systemctl status ssh
```

## SSH Hardening

- Public key authentication configured
- SSH service verified
- Password authentication reviewed

## Note

Changing the default SSH port was attempted but not completed due to 
service confguration conflicts within the VM. The server continues to operate 
securely on the default port for this lab environment.

## Screenshots

- SSH installation
- SSH service running
- SSH key generation
- Public key configuration

---

# Technologies Used

- Ubuntu Linux
- Bash
- Apache2
- MySQL
- UFW
- Fail2Ban
- OpenSSH
- Cron
- htop
- netstat

---

# What I Learned

Through these projects I gained practical experience with:

- Linux user and permission management
- Web server deployment
- Database administration
- Bash scripting and automation
- Firewall configuration
- SSH server management
- System monitoring
- Security best practices
- Troubleshooting Linux services

---

# Respository Structure

```
project-01-user-management/
project-02-web-server/
project-03-database/
project-04-backup-script/
project-05-firewall-security/
project-06-monitoring/
project-07-ssh-server-and-remote-management/
README.md
```

---

Siyonwaba 'Ta Siyo' Mlamla

Linux System Administration Portfolio

GitHub: https://github.com/Ta-Siyo/linux-sysadmin-portfolio
