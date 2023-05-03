# LAMP Stack Setup for AWS EC2

This repository contains a bash script to automate the process of setting up a LAMP (Linux, Apache, MySQL, PHP) stack on an AWS EC2 instance running Ubuntu 20.04 LTS.

## Prerequisites

1. An AWS account with access to create and manage EC2 instances.
2. An EC2 instance running Ubuntu 20.04 LTS. Make sure to configure security groups to allow inbound traffic on ports 80 (HTTP) and 22 (SSH).

## Usage

1. Connect to your EC2 instance via SSH.
2. Clone this repository by running the following command:
git clone [https://github.com/yourusername/aws-ec2-lamp-setup.git](https://github.com/richtechteam/aws-ec2-lamp-setup)
3. Change to the repository directory:
 `cd aws-ec2-lamp-setup`
4. Make the `install_lamp.sh` script executable:
  `chmod +x install_lamp.sh`
5. Run the script to install the LAMP stack:
 `./install_lamp.sh`
During the MySQL installation, you will be prompted to set a root password. Choose a strong password and keep it safe.

6. Test your LAMP stack by creating a PHP info file:
 `echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/info.php`
7. Open a web browser and navigate to `http://<your-ec2-instance-public-ip>/info.php`. You should see the PHP info page, which indicates that your LAMP stack is working correctly.

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for more information.

