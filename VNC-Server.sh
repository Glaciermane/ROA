sudo yum update

sudo yum install tigervnc-server
check_status $?

vncpasswd

vi ~/.vnc/xstartup

echo "add following content in" "'xstartup'"
echo "#!/bin/sh"
echo "unset SESSION_MANAGER"
echo "unset DBUS_SESSION_BUS_ADDRESS"
echo "exec /etc/X11/xinit/xinitrc"
echo "."
echo "save and close the editor with (vi) 'ESC' and ':wq'."
check_status $?

chmod +x ~/.vnc/xstartup
check_status $?

vncserver :1
echo  "VNC Server run on display :1 (Port: 5901"
check_status $?

sudo firewall-cmd --add-port=5901/tcp --permanent
sudo firewall-cmd --reload
check_status $?

sudo iptables --version
sudo firewall-cmd --version

sudo service iptables start
check_status $?

sudo systemctl start firewalld
check_status $?

sudo chkconfig iptables on
check_status $?

sudo systemctl enable firewalld
check_status $?

vncserver :1
check_status $?
