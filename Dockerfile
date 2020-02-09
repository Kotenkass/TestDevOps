# Anton Nikolaev Kotenkass  08-February-2020

FROM centos:latest
MAINTAINER testDevOpsNik


# Install prepare infrastructure
RUN yum -y install wget  && \
 yum -y install tar       && \
 yum -y install httpd       && \
 yum -y install php php-cli   && \
 yum -y install mysql mysql-server


# Git install
Run yum -y install git


# Git Authentication
RUN git config --global user.name "Anton Nikolaev"  
RUN git config --global user.email "sparkton02@gmail.com" 


# Instal app with Git 
RUN git clone https://github.com/Saritasa/simplephpapp.git /var/www/html/
RUN git clone https://github.com/Saritasa/simplephpapp.git /home/


# Autorun service
RUN chkconfig mysqld on && \
 chkconfig httpd on


RUN cd /home/ &&  php artisan key:generate 



CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 8080
EXPOSE 80


