FROM node:21.6.0-alpine3.19
WORKDIR /app/user

COPY package.json .
RUN npm install --production

COPY . .
CMD node app.js
