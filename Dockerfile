FROM alpine:3.7

RUN mkdir -p /usr/share/GeoIP
RUN wget -qO- http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz | gunzip > /usr/share/GeoIP/GeoIP.dat
RUN wget -qO- http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz | gunzip > /usr/share/GeoIP/GeoLiteCity.dat

VOLUME GeoIP


