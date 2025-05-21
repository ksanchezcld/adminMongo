FROM node:23.11.1-alpine3.21
WORKDIR /app/user

COPY package.json .
RUN npm install --production

COPY . .
CMD node app.js
