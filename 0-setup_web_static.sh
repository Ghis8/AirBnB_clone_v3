#!/usr/bin/env bash
# Script that sets up your web servers for the deployment of web_static
if ! which nginx > /dev/null 2>&1; then
    sudo apt-get -y update
    sudo apt-get -y install nginx
fi
if ! test -d /data; then
    mkdir /data
fi
if ! test -d /data/web_static/; then
    mkdir /data/web_static
fi
if ! test -d /data/web_static/releases/; then
    mkdir /data/web_static/releases/
fi
if ! test -d /data/web_static/shared/; then
    mkdir /data/web_static/shared/
fi
if ! test -d /data/web_static/releases/test/; then
    mkdir /data/web_static/releases/test/
fi
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

