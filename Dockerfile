FROM node:latest

RUN npm install -g http-server

ADD . /usr/app/
WORKDIR /usr/app/

RUN npm install
RUN npm run build
WORKDIR /usr/app/dist


CMD ["http-server"]