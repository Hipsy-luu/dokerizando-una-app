FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Se copian los archivos del repositorio
RUN git clone https://github.com/Hipsy-luu/dokerizando-una-app.git
# Se instalan las dependencias para la app
RUN npm install

# Se lanza la app por el puerto 8080 del sistema dentro de la imagen
EXPOSE 8080
# Se ejecuta el el comando CMD para lanzar la app (ponerla en linea por el puerto 8080)
CMD [ "node", "index.js" ]
