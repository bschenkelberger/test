FROM node

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ENV PATH /usr/src/node_module/.bin:$PATH

COPY package*.json /usr/src/app

RUN npm install

COPY . .

EXPOSE 4000
CMD [ "npm", "start"]
