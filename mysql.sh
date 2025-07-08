if [[ -z "$1" ]]; then
 echo "Provide a valid password!"
 exit 1
fi
dnf install mysql-server -y
systemctl enable mysqld
systemctl start mysqld
mysql_secure_installation --set-root-pass $1