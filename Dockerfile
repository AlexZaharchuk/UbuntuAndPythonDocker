FROM ubuntu:18.04

# update dependencies
RUN apt-get update -y

# install packages
RUN apt-get -y install cron git postgresql-client-10 python python-pip python3 python3-pip apache2 apache2-utils \
    rsyslog python-setuptools curl cron

# upgrade pip3
RUN pip3 install --upgrade pip

# install wsgi mod for python3
RUN apt-get install -y libapache2-mod-wsgi-py3
