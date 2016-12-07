 #!/bin/bash
 
 echo "Installing Apache Server"
 yum -y install httpd
 
 echo "Rename the "default" vhost to "my_website""
  sed -i "s|VirtualHost _default_:80|VirtualHost my_website:80|g" /etc/httpd/conf/httpd.conf
 
 echo "Creating a directory called /opt/scripts"
 mkdir -p /opt/scripts
 
 echo "Puts an empty file in the scripts directory called "holding.sh" which is executable by all users"
 touch /opt/scripts/holding.sh
 chmod +x /opt/scripts/holding.sh
 ### EOF ###
