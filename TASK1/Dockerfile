FROM node:14.14.0-buster-slim

WORKDIR /var/services/apps

COPY ./app.js .
COPY ./package.json .

RUN npm install

EXPOSE 8080

CMD [ "node", "app.js" ]