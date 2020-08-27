read -p 'Username: ' username
read -p 'host: ' host
read -p 'options: ' options
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
echo ssh-copy-id $options $username@$host
ssh-copy-id $options $username@$host 