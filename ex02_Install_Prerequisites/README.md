# Exercise 02 Install Prerequisites

## Install Git

- `sudo apt update`
- `sudo apt install git`
- set git config: `username`, `email`

## Install Nginx

### Install

- `sudo apt install nignx`

### Server Configuration
- Default web content: `/var/www/html`

Configuration Files and Folder:

- `/etc/nginx`
- `/etc/nginx/nginx.conf`
- `/etc/nginx/sites-available/`
- `/etc/nginx/sites-enabled/`
- `/etc/nginx/snippets`

## Install Apache

### Install
- `sudo apt install apache2`

### Server Configuration
- Default web content: `/var/www/html`

Configuration Files and Folder:

- `/etc/apache2`
- `/etc/apache2/apache2.conf`
- `/etc/apache2/ports.conf`
- `/etc/apache2/sites-available/` and `/etc/apache2/sites-enabled/`
- `/etc/apache2/conf-available/` and `/etc/apache2/conf-enabled/`
- `/etc/apache2/mods-available/` and `/etc/apache2/mods-enabled/`

## Debugging

### Testing Access

- `curl -v {hostname}:{port}`

### Service Status
- `sudo service nginx status|start|stop|restart`

### Log Files
- **Nginx**: Check config in `/etc/nginx/nginx.conf`
- **Apache**: Check config in `/etc/apache2/apache2.conf`
- `access_log` and `error_log`

## References
- [https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-16-04](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-16-04)

- [https://www.digitalocean.com/community/tutorials/how-to-install-the-apache-web-server-on-ubuntu-16-04](https://www.digitalocean.com/community/tutorials/how-to-install-the-apache-web-server-on-ubuntu-16-04)
