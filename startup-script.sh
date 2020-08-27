#Create user
read -p 'Username: ' Username
read -sp 'Paswoord: ' password


#export USER_NAME=worpdressadmin
sudo adduser $Username
echo $($password) | passwd --stdin
sudo gpasswd -a $Username wheel

##Install apache php
#sudo yum check-update
#sudo yum -y install httpd php
#
##Start apache
#sudo service httpd start
#
##Set apache server to start automatically
#sudo chkconfig httpd on
#
##Install mysql
#sudo yum -y install httpd mariadb-server php php-mysql
#sudo systemctl start mariadb
#sudo systemctl enable mariadb
#sudo yum -y install phpMyAdmin
##Pendiente de configurar
##sudo mysql_secure_installation
#
#
##myphpAdmin shall be config to allow external access different from local host
##Restart apahp
##sudo systemctl restart httpd
##Install wp-cli https://www.linode.com/docs/websites/cms/wp-cli/how-to-install-wordpress-using-wp-cli-on-centos-7/
#curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
#chmod +x wp-cli.phar
#sudo mv wp-cli.phar /usr/local/bin/wp
#
##Allow bash completion
#sudo yum install -y wget
#cd ~
#wget https://github.com/wp-cli/wp-cli/raw/master/utils/wp-completion.bash
#sudo echo source /home/$USER/wp-completion.bash >> ~/.bashrc
#sudo source ~/.bashrc
#sudo echo autoload bashcompinit >> ~/.zshrc
#sudo echo bashcompinit >> ~/.zshrc
#sudo echo source /home/$USER/wp-completion.bash >> ~/.zshrc
#source ~/.zshrc
#
#
#
#
##install git
#sudo yum install -y git
#
##install nano
#sudo yum -y install nano
#
##Ejecute una vez conecte al centos
##sudo mysql_secure_installation
#
#
#
#sudo systemctl restart httpd
