FROM node

WORKDIR /usr/src/app

COPY . .

RUN npm install --only=production

EXPOSE 8080

USER node

CMD ["node", "index.js"]
