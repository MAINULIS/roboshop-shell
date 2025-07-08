if [[ -z "$1" ]]; then
  echo "Provide a valid password!"
    exit
fi

source common.sh
component=shipping
MAVEN

dnf install mysql -y
for file in schema app-user master-data ; do
    mysql -h mysql-dev.maidevops.fun -uroot -p$1 < /app/db/$file.sql
done