FROM node:lts-alpine
# env set
ENV EVA_ENTRYPOINT=/api
WORKDIR /
COPY . .
RUN npm install && npm run build 
RUN ls && pwd
FROM nginx:alpine
RUN ls && pwd
COPY  ./dist/ /usr/share/nginx/html/
EXPOSE 80
