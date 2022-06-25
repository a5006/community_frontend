FROM node:lts-alpine
# env set
ENV EVA_ENTRYPOINT=/api
WORKDIR /
COPY . .
RUN npm install && npm run build 
FROM nginx:alpine
COPY  ./dist/ /usr/share/nginx/html/
EXPOSE 80
