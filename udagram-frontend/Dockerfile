## Construire
FROM beevelop/ionic:latest AS ionic
## Créer le répertoire de l'application
WORKDIR /usr/src/app
# Installer les dépendances de l'application
# Un joker est utilisé pour s'assurer que package.json ET package-lock.json sont copiés.
COPY package*.json ./
RUN npm ci -f
RUN npm i -D typescript@3.4.5
# RUN npm install -f
# RUN npm i -D -E @angular/cli

# RUN npm uninstall @angular-devkit/build-angular
# RUN npm install --save-dev @angular-devkit/build-angular
# RUN npm install @angular/core
# RUN rm -r node_modules
# RUN npm cache clean -f
# RUN npm cache clean --force
# RUN npm install
# RUN npm ci
# Regroupement des sources de l'application
COPY . .
RUN ionic build
## Exécuter
FROM nginx:alpine
#COPY www /usr/share/nginx/html
COPY --from=ionic /usr/src/app/www /usr/share/nginx/html