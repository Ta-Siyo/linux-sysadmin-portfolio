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

- Installed Apache (sudo apt install apache2 -y)
- Checked Apache status (sudo systemctl status apache2)
- Created website folders (sudo mkdir -p /var/www/company-site)
- Created HTML page (sudo nano /var/www/company-site/index.html)
- Set permissions (sudo chown -R $USER:$USER /var/www/company-site)
- Create virtual host file (sudo nano /etc/apache2/sites-available/company-site.conf)
- Enable your site (sudo a2ensite company-site.conf)
- Disable default Apache page (sudo a2dissite 000-default.conf)
- Restart Apache (sudo systemctl restart apache2)
- Checked firewall rules (sudo ufw allow 'Apache', and sudo ufw status)
- Enable SSL (sudo a2emod ssl)
- Create SSL certificate
 (sudo openssl req -x509 -nodes -days 365 \
 -newkey rsa:2048 \
 -keyout /etc/ssl/private/company.key \
 -out /etc/ssl/certs/company.crt)


## Configuration

The Apache Virtual host was configured to serve a custom website from:

/var/www/company-site

The configuration file:

/etc/apache2/sites-available/company-site.conf

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
