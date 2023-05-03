#!/bin/bash

# Update the system
sudo apt-get update -y

# Install Apache
sudo apt-get install apache2 -y

# Enable Apache to start automatically
sudo systemctl enable apache2

# Start Apache
sudo systemctl start apache2

# Install MySQL
sudo apt-get install mysql-server -y

# Secure MySQL installation
sudo mysql_secure_installation

# Install PHP
sudo apt-get install php libapache2-mod-php php-mysql -y

# Restart Apache to load PHP module
sudo systemctl restart apache2

echo "LAMP stack installed successfully!"
