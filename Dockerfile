FROM node:21.2-alpine3.18
WORKDIR /app/user

COPY package.json .
RUN npm install --production

COPY . .
CMD node app.js
