# GEOIP for nginx

After the checkout of this project, please run
```
npm run install
```

Add the following line to your `nginx.conf` file under `http `:
```
geoip_country /etc/nginx/geoip/GeoIP.dat;
geoip_city /etc/nginx/geoip/GeoLiteCity.dat;
geoip_proxy 127.0.0.1;
```

And the following lines to your `etc/nginx/fastcgi_params`
```
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

For upstreams configuration might be the following
```
proxy_set_header X-GEOIP_COUNTRY_CODE $geoip_country_code;
proxy_set_header X-GEOIP_COUNTRY_NAME $geoip_country_name;
proxy_set_header X-GEOIP_REGION $geoip_region;
proxy_set_header X-GEOIP_REGION_NAME $geoip_region_name;
proxy_set_header X-GEOIP_CITY $geoip_city;
proxy_set_header X-GEOIP_AREA_CODE $geoip_area_code;
proxy_set_header X-GEOIP_LATITUDE $geoip_latitude;
proxy_set_header X-GEOIP_LONGITUDE $geoip_longitude;
proxy_set_header X-GEOIP_POSTAL_CODE $geoip_postal_code;
```
