FROM node:lts-alpine as builder
# env set
ENV EVA_ENTRYPOINT=/api
WORKDIR /
COPY package.json /
RUN npm install --registry=https://registry.npm.taobao.org
RUN npm run build
FROM nginx:alpine
COPY /nginx/ /etc/nginx/
COPY  /dist/ /usr/share/nginx/html/
EXPOSE 80
