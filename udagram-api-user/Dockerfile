FROM node:12
# Créer le répertoire de l'application
WORKDIR /usr/src/app
# RUN rm -rf node_nodules
# Installer les dépendances de l'application
# Un joker est utilisé pour s'assurer que le paquet.json ET le paquet-lock.json sont copiés lorsqu'ils sont disponibles (npm@5+)
COPY package*.json ./
# RUN npm cache clean --force
RUN npm ci 
# RUN npm i -f
# RUN npm -i -d -f @types/node
# Regroupement des sources de l'application
COPY . .
EXPOSE 8080
CMD [ "npm", "run", "prod" ]