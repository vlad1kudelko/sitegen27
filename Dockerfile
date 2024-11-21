FROM node

WORKDIR /app

COPY package.json .
RUN npm install

USER node

COPY . .

WORKDIR /app/www
CMD ["node", "/app/build.js"]
