FROM node:lts-alpine
# env set
ENV EVA_ENTRYPOINT=/api
WORKDIR /
COPY . .
RUN npm install && npm run build 
WORKDIR /
FROM nginx:alpine
RUN ls
COPY  ./dist/ /usr/share/nginx/html/
EXPOSE 80
