FROM node:12

RUN npm install -g nodemon

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . . 

ENV PORT=8080

EXPOSE 8080

CMD ["npm", "start"]