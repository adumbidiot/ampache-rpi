FROM resin/rpi-raspbian

RUN apt-get update
RUN apt-get install ampache ampache-themes

EXPOSE 80
CMD apache2 -D FOREGROUND
#source /etc/apache2/envvars
#exec apache2 -D FOREGROUND
