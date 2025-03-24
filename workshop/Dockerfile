# filepath: /mnt/data/Projects/github/MyGit/docker-practices/workshop/Dockerfile
FROM nginx:latest

# Copia los archivos HTML y el script de inicio
COPY dist /usr/share/nginx/html
COPY scripts/entrypoint.sh /entrypoint.sh

# Da permisos de ejecución al script de inicio
RUN chmod +x /entrypoint.sh

# Usa el script de inicio como el comando de entrada
ENTRYPOINT ["/entrypoint.sh"]