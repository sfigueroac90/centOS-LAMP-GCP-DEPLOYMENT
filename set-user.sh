#Create user
read -p 'Username: ' Username
read -sp 'Paswoord: ' password


#export USER_NAME=worpdressadmin
sudo adduser $Username
echo $($password) | passwd --stdin
sudo gpasswd -a $Username wheel
