FROM resin/rpi-raspbian

RUN apt-get update
RUN apt-get install ampache ampache-themes apache2

ADD ./config.conf /etc/apache2/sites-available/config.conf

RUN cat /etc/apache2/apache2.conf
EXPOSE 80
CMD apache2 -D FOREGROUND
#source /etc/apache2/envvars
#exec apache2 -D FOREGROUND
