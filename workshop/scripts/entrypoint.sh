#!/bin/sh

# Reemplaza los marcadores de posición en el HTML con las variables de entorno
envsubst < /usr/share/nginx/html/index.html > /usr/share/nginx/html/index.html.tmp
mv /usr/share/nginx/html/index.html.tmp /usr/share/nginx/html/index.html

# Inicia Nginx
nginx -g 'daemon off;'