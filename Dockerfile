FROM resin/rpi-raspbian

RUN apt-get update
RUN apt-get install ampache ampache-themes

EXPOSE 80
CMD /usr/local/apache2/bin/apachectl
