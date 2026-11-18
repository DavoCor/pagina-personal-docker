# Página personal de David en un contenedor Docker

Página web estática (HTML, CSS, JavaScript e imágenes SVG) servida con Nginx dentro de un contenedor Docker.

## Estructura

```
pagina-personal-docker/
├── Dockerfile       <- instrucciones para construir la imagen
├── .dockerignore    <- archivos que Docker no necesita
└── sitio/           <- la página
    ├── index.html
    ├── css/estilos.css
    ├── js/app.js
    └── img/         <- imágenes SVG
```

## Requisitos

- Docker Desktop instalado y abierto.

## Cómo ejecutarla

```bash
# 1. Construir la imagen
docker build -t pagina-david:v1 .

# 2. Crear y arrancar el contenedor (puerto 8080 del computador -> 80 del contenedor)
docker run -d --name pagina-david -p 8080:80 pagina-david:v1

# 3. Abrir en el navegador
#    http://localhost:8080
```

## Detener, iniciar y reiniciar

```bash
docker stop pagina-david      # la página deja de estar disponible
docker start pagina-david     # la página vuelve a funcionar
docker restart pagina-david   # detiene y vuelve a iniciar en un solo paso
```

## Borrar el contenedor

```bash
docker stop pagina-david
docker rm pagina-david
```
