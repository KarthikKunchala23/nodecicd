FROM 905418104867.dkr.ecr.us-east-1.amazonaws.com/node:latest

WORKDIR /usr/src/app

COPY . .

RUN npm install --only=production

EXPOSE 8080

USER node

CMD ["node", "index.js"]
