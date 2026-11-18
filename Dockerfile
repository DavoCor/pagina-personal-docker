# Imagen base: Nginx oficial, versión estable y liviana (Alpine)
FROM nginx:stable-alpine

# Copia la página (HTML, CSS, JavaScript e imágenes) a la carpeta que publica Nginx
COPY sitio/ /usr/share/nginx/html/

# Puerto en el que escucha Nginx dentro del contenedor
EXPOSE 80

# Mantiene Nginx en primer plano para que el contenedor siga encendido
CMD ["nginx", "-g", "daemon off;"]
