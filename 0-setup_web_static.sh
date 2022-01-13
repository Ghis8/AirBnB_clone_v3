#!/usr/bin/env bash
# Script that sets up your web servers for the deployment of web_static

sudo apt-get -y update
sudo apt-get -y install nginx
mkdir -p /data/
mkdir -p /data/web_static/
mkdir -p /data/web_static/releases/
mkdir -p /data/web_static/shared/
mkdir -p /data/web_static/releases/test/
VALUE="<html>
  <head>
  </head>
  <body>
    Holberton School
  </body>
</html>"
echo "$VALUE" > /data/web_static/releases/test/index.html
ln -sf /data/web_static/releases/test/ /data/web_static/current
chown -R ubuntu:ubuntu /data/
FIRST_PATH="server_name _;"
FIRST_PATH_TWO="\tlocation /hbnb_static {\n\t\talias /data/web_static/current/;\n\t\tautoindex off;\n\t}"
SECOND_PATH="/etc/nginx/sites-available/default"
sudo sed -i "/$FIRST_PATH/a\\$FIRST_PATH_TWO" $SECOND_PATH
sudo service nginx restart

