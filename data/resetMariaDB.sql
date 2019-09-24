# ejecutar dentro de vagrant ssh
sudo su
systemctl stop mariadb
yum -y remove MariaDB-server-10.3.17 MariaDB-client-10.3.17
yum -y install MariaDB-server-10.3.17 MariaDB-client-10.3.17
rm -rf /var/lib/mysql
systemctl start mariadb
mysql 

# ejecutar dentro de mysql
CREATE USER 'app'@'localhost' IDENTIFIED BY 'secret';
CREATE USER 'app'@'%' IDENTIFIED BY 'secret';
GRANT ALL PRIVILEGES ON *.* 'app'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* 'app'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
quit