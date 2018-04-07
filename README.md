# GEIIP for nginx

Add the following line to your nginx.conf file :
```
geoip_country /usr/share/GeoIP/GeoIP.dat;
geoip_city /usr/share/GeoIP/GeoIPCity.dat;
```

And the following lines to your `etc/nginx/fastcgi_params`

```
fastcgi_param GEOIP_ADDR $remote_addr;
fastcgi_param GEOIP_COUNTRY_CODE $geoip_country_code;
fastcgi_param GEOIP_COUNTRY_NAME $geoip_country_name;
fastcgi_param GEOIP_REGION $geoip_region;
fastcgi_param GEOIP_REGION_NAME $geoip_region_name;
fastcgi_param GEOIP_CITY $geoip_city;
fastcgi_param GEOIP_AREA_CODE $geoip_area_code;
fastcgi_param GEOIP_LATITUDE $geoip_latitude;
fastcgi_param GEOIP_LONGITUDE $geoip_longitude;
fastcgi_param GEOIP_POSTAL_CODE $geoip_postal_code;
```
