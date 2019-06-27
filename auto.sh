#!/bin/bash
cd && sudo apt-get update
cd && yes | sudo apt-get install geany
cd && yes| sudo apt-get install openssh*
cd && yes | sudo apt-get install nfs-common
cd && mount -t nfs 192.168.8.11:/raid0/data/_NAS_NFS_Exports_/OneBill_Tools /mnt
cd && cd /mnt && cp eclipse-jee-oxygen-3a-linux-gtk-x86_64.tar.gz ~
cd && cd /mnt && cd 64-bit-Ubuntu/ && cp skypeforlinux-64.deb google-chrome-stable_current_amd64.deb ~
cd && cd /mnt && cd Udaya && cp -r liquibase-3.5.5/ ~
cd && cd /mnt && cp apache-activemq-5.15.8.zip ~
cd && cd /mnt && cp -r autoscript ~
cd && umount /mnt
cd && yes | sudo dpkg -i skypeforlinux-64.deb
cd && yes | sudo dpkg -i google-chrome-stable_current_amd64.deb
cd && yes| sudo apt-get install mysql-server-5.7
cd && echo "CREATE USER 'onebill'@'%' identified by 'onebill';" | mysql -u root -p && echo "CREATE USER 'onebill'@'localhost' identified by 'onebill';" | mysql -u root -p && echo "GRANT ALL ON *.* TO 'onebill'@'%' WITH GRANT OPTION;" | mysql -u root -p && echo "GRANT ALL ON *.* TO 'onebill'@'localhost' WITH GRANT OPTION;" | mysql -u root -p && echo "flush privileges;" | mysql -u root -p && cd autoscript && cat mysqlconfig>>/etc/mysql/mysql.conf.d/mysqld.cnf   && cd && systemctl restart mysql
cd && yes| sudo apt install openjdk-8-jdk
cd && tar xvzf eclipse-jee-oxygen-3a-linux-gtk-x86_64.tar.gz
cd && sudo apt-get install maven
cd && sudo apt-get install ant
cd && sudo apt install snapd && snap install postman
cd && wget https://s3.amazonaws.com/downloads.eviware/soapuios/5.5.0/SoapUI-x64-5.5.0.sh && chmod 755  SoapUI-x64-5.5.0.sh && ./SoapUI-x64-5.5.0.sh
cd && echo -e 'export LIQUIBASE_HOME=~/liquibase-3.5.5\nexport PATH=$LIQUIBASE_HOME:$PATH' >> ~/.bashrc
cd && unzip apache-activemq-5.15.8.zip && cd apache-activemq-5.15.8/bin && ./activemq start
cd && sudo apt install software-properties-common apt-transport-https wget && wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - &&  sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" && sudo apt update && sudo apt install code
cd && code --install-extension dbaeumer.vscode-eslint && code --install-extension dsznajder.es7-react-js-snippets && code --install-extension esbenp.prettier-vscode && code --install-extension formulahendry.auto-close-tag && code --install-extension msjsdiag.debugger-\for-chrome && code --install-extension VisualStudioExptTeam.vscodeintellicode && code --install-extension vscode-icons-team.vscode-icons
cd && unzip staging.zip tomcat.zip
u="$USER"
cd && cd staging && sed -i s/madhesh/$u/g config.ini
cd && cd staging && ./onebilldeploy.py
cd && cd tomcat/apache-tomcat-8.5.29/bin && ./run.sh
cd && sudo apt-get install meld && sudo apt-get install intltool itstool gir1.2-gtksource-3.0 libxml2-utils && git clone https://git.gnome.org/browse/meld && cd meld && sudo python setup.py install
cd && sudo apt-get install git-core
cd && sudo apt-get install -y gitk
echo\"set nocompatible\">>.vimrc
echo -e "bind "^W" ed-delete-prev-word\nbind "^U" vi-kill-line-prev">>.editrc

