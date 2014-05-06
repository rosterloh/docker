# MySQL Server
#
# VERSION	1.0

FROM ubuntu:latest
MAINTAINER Richard Osterloh, richard.osterloh@gmail.com

#RUN dpkg-divert --local --rename --add /sbin/initctl
#RUN ln -s /bin/true /sbin/initctl
#RUN dpkg-divert --local --divert /bin/true --rename /sbin/initctl

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y mysql-client mysql-server
RUN apt-get clean

RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

ADD ./startup.sh /opt/startup.sh

EXPOSE 3306

#ENTRYPOINT ["/usr/sbin/mysqld"]
CMD ["/bin/bash", "/opt/startup.sh"]
