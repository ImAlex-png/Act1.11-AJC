
# ==========================================================
# Dockerfile seguro para una aplicación HTML estática
# ==========================================================

# Utilizar una versión específica de la imagen, sin latest.
FROM nginxinc/nginx-unprivileged:1.29.3-alpine3.22

# Copiar la página HTML al directorio público de Nginx.
COPY index.html /usr/share/nginx/html/index.html

# Ejecutar el servidor con un usuario sin privilegios de root.
USER 101

# Indicar el puerto en el que escucha la aplicación.
EXPOSE 8080

# Arrancar Nginx en primer plano con la sintaxis exec.
CMD ["nginx", "-g", "daemon off;"]
