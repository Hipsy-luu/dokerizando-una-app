FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Se agregan los archivos que tienen la palabra package*.json para que 
# Al momento de correr el comando npm install se detecten las dependencias
# con las que la app funciona (librerias o algo parecido)
# Con el siguiente comando se asegura la copia de los archivos package.json Y package-lock.json
COPY package*.json ./

# Se instalan las dependencias para la app
RUN npm install

# Bundle app source (se copian los archivos a la altura de el archivo Doker)
COPY . .

# Se lanza la app por el puerto 8080 del sistema dentro de la imagen
EXPOSE 8080
# Se ejecuta el el comando CMD para lanzar la app (ponerla en linea por el puerto 8080)
CMD [ "node", "index.js" ]
