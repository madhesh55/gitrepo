#!/usr/bin/perl
$update=system("cd && apt-get update");
$geany = system("cd && yes | apt-get install geany");
$openssh=system("cd && yes| apt-get install openssh*");
$nfscommon=system("cd && yes | apt-get install nfs-common");
$mount=system("cd && mount -t nfs 192.168.8.11:/raid0/data/_NAS_NFS_Exports_/OneBill_Tools /mnt");
$mnt=system("cd && cd /mnt && cp eclipse-jee-oxygen-3a-linux-gtk-x86_64.tar.gz ~");
$cpskype=system("cd && cd /mnt && cd 64-bit-Ubuntu/ && cp skypeforlinux-64.deb google-chrome-stable_current_amd64.deb ~");
$installskype=system("cd && yes | sudo dpkg -i skypeforlinux-64.deb");
$liquibase=system("cd && cd /mnt && cd Udaya && cp -r liquibase-3.5.5/ ~");
$activemq=system("cd && cd /mnt && cp apache-activemq-5.15.8.zip ~");
$cpautoscript=system("cd && cd /mnt && cd autoscript && cp staging.zip tomcat.zip ~");
$unmount=system("cd && umount /mnt");
$chrome=system("cd && dpkg -i google-chrome-stable_current_amd64.deb");
$mysql=system("cd && yes| apt-get install mysql-server-5.7");
$mysqlconf=system("cd && echo \"CREATE USER \'onebill\'@\'%\' identified by \'onebill\';\" | mysql -u root -p && echo \"CREATE USER \'onebill\'@\'localhost\' identified by \'onebill\';\" | mysql -u root -p && echo \"GRANT ALL ON *.* TO \'onebill\'@\'%\' WITH GRANT OPTION;\" | mysql -u root -p && echo \"GRANT ALL ON *.* TO \'onebill\'@\'localhost\' WITH GRANT OPTION;\" | mysql -u root -p && echo \"flush privileges;\" | mysql -u root -p && cd autoscript && cat mysqlconfig>>/etc/mysql/mysql.conf.d/mysqld.cnf   && cd && systemctl restart mysql");
$jdk=system("cd && yes| apt-get install openjdk-8-jdk");
$eclipse=system("cd && tar xvzf eclipse-jee-oxygen-3a-linux-gtk-x86_64.tar.gz");
$maven=system("cd && apt-get install maven");
$ant=system=("cd && apt-get install ant");
$postman=system("cd && apt install snapd && snap install postman");
$soapUI=system("cd && wget https://s3.amazonaws.com/downloads.eviware/soapuios/5.5.0/SoapUI-x64-5.5.0.sh && chmod 755  SoapUI-x64-5.5.0.sh && ./SoapUI-x64-5.5.0.sh");
$liqxtra=system("cd && echo \'export LIQUIBASE_HOME=~/liquibase-3.5.5\nexport PATH=\$LIQUIBASE_HOME:\$PATH\' >> ~/.bashrc");
$activeset=system("cd && unzip apache-activemq-5.15.8.zip && cd apache-activemq-5.15.8/bin && ./activemq start");
$vscode=system("cd && sudo apt install software-properties-common apt-transport-https wget && wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - &&  sudo add-apt-repository \"deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main\" && sudo apt install code");
$vsplugin=system("cd && code --install-extension dbaeumer.vscode-eslint && code --install-extension dsznajder.es7-react-js-snippets && code --install-extension esbenp.prettier-vscode && code --install-extension formulahendry.auto-close-tag && code --install-extension msjsdiag.debugger-\for-chrome && code --install-extension VisualStudioExptTeam.vscodeintellicode && code --install-extension vscode-icons-team.vscode-icons");
$uziptomstage=system("cd && unzip staging.zip tomcat.zip");
my $user = $ENV{ USER };
$changeusername=system("cd && cd staging && sed -i s/madhesh/$user/g config.ini");
$startscript=system("cd && cd staging && ./onebilldeploy.py");
$starttomcat=system("cd && cd tomcat/apache-tomcat-8.5.29/bin && ./run.sh");
$meld=system("cd && sudo apt-get install meld && sudo apt-get install intltool itstool gir1.2-gtksource-3.0 libxml2-utils && git clone https://git.gnome.org/browse/meld && cd meld && sudo python setup.py install");
$git=system("cd && sudo apt-get install git-core");
$gitk=system("cd && sudo apt-get install -y gitk");
$vimrc=system("cd && echo\"set nocompatible\">>.vimrc");
$editrc=system("cd && echo\"bind \"^W\" ed-delete-prev-word\nbind \"^U\" vi-kill-line-prev\">>.editrc");
print $update;
print $geany;
print $openssh;
print $nfscommon;
print $mount;
print $mnt;
print $cpskype;
print $installskype;
print $liquibase;
print $activemq;
print $cpautoscript;
print $unmount;
print $chrome;
print $jdk;
print $mysql;
print $mysqlconf;
print $eclipse;
print $maven;
print $ant;
print $postman;
print $soapUI;
print $liqxtra;
print $activeset;
print $vscode;
print $vsplugin;
print $unziptomstage;
print $changeusername;
print $startscript;
print $starttomcat;
print $meld;
print $git;
print $gitk;
print $vimrc;
print $editrc;
#END

