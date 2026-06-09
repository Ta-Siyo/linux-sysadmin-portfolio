# Web Server Deployment

## Objective

Deploy a website using Apache on Ubuntu.

## Skills Demonstrated

- Package installation
- Service management
- Virtual hosts
- Firewall configuration
- Website deployment

## Commands Used

(Include commands)

## Configuration

(Include company-site conf)

## Verification

Successful hosted a custom HTML page and verified access through 
a web browser.


# Bonus SSL Certificate
## Self-Signed SSL Certificate

Generated a self-signed SSL certificate using OpenSSL.

Commands used:

```bash
sudo openssl req -x509 -nodes -days 365 \
-newkey rsa:2048 \
-key /etc/ssl/private/company.key \
-out /etc/ssl/certs/company.crt
```

sudo a2emod ssl
sudo systemctl restart apache2
