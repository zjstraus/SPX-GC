FROM node:12

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci

COPY docker-data/default-config.json /data/config.json

COPY . .

EXPOSE 5000

CMD node server.js ../../../data/config.json

