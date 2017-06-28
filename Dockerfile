FROM node:latest

RUN npm install -g http-server

ADD . /usr/app/
WORKDIR /usr/app/

RUN npm install
RUN npm run build
ADD dist /usr/app/dist
WORKDIR /usr/app/dist


CMD ["http-server"]