#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.6.50800.zip
unzip sonarqube-8.9.6.50800.zip
amazon-linux-extras install java-openjdk11 -y
useradd sonar
chown -R sonar:sonar sonarqube-8.9.6.50800 
chmod 777 sonarqube-8.9.6.50800 -R
su - sonar

#run this on server manually
#sh /opt/sonarqube-8.9.6.50800/bin/linux/sonar.sh start
#echo "user=admin & password=admin"
