FROM node:alpine

WORKDIR /usr/app

COPY package*.json ./

RUN npm i

COPY . .

EXPOSE 3030

CMD ["npm","start"]