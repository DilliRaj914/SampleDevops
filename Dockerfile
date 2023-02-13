FROM node:alpine
COPY ./src
WORKDIR /src
CMD node app.js
