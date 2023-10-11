FROM node:18
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm i -g npm
RUN npm install
COPY . .
ENV PORT=3000
EXPOSE 3000
CMD [ "node", "index.js" ]
