FROM node:lts-alpine as builder
# env set
ENV EVA_ENTRYPOINT=/api
WORKDIR /
COPY package.json /
RUN npm install && npm run build 

FROM nginx:alpine
COPY  /dist/ /usr/share/nginx/html/
EXPOSE 80
