# Paso 1: Empezamos desde una imagen de Linux súper ligera
FROM alpine:latest

# Paso 2: Copiamos nuestro script "saludo.sh" desde el PC al interior de la imagen
COPY saludo.sh /saludo.sh

# Paso 3: (Opcional pero buena práctica) Damos permisos por si acaso
RUN chmod +x /saludo.sh

# Paso 4: El comando que se ejecutará cuando arranquemos el contenedor
CMD ["/saludo.sh"]
