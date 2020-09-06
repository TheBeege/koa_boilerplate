FROM node:lts-alpine

USER node

RUN mkdir /app

COPY . /app
RUN npm install --production

WORKDIR /app

CMD ["node", "-e", "NODE_ENV=production", "src/index.js"]
