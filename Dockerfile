FROM ubuntu:trusty
MAINTAINER AAP <ranjan@adoptapet.com>

RUN apt-get update && apt-get -y install apache2 php5 && apt-get -y autoremove && apt-get clean

RUN /usr/sbin/a2enmod rewrite

ADD 000-default.conf /etc/apache2/sites-available/

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]