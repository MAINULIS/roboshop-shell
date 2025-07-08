dnf install golang -y

source common.sh
component=dispatch
APP_PREREQ

go mod init dispatch
go get
go build
SYSTEMD