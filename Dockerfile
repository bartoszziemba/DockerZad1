FROM sebp/lighttpd
ADD Zrodlo.tar.gz /var/www/localhost/htdocs
EXPOSE 80
