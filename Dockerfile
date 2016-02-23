FROM timhaak/base:latest
MAINTAINER tim@haak.co.uk

RUN curl -o /pms.deb https://downloads.plex.tv/plex-media-server/0.9.15.5.1712-ba5070a/plexmediaserver_0.9.15.5.1712-ba5070a_amd64.deb && dpkg -i /pms.deb
VOLUME ["/config","/data"]

ADD ./start.sh /start.sh
RUN chmod u+x  /start.sh

ADD ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 32400

CMD ["/start.sh"]
