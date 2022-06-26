FROM node:lts-alpine as Builder
# env set
ENV EVA_ENTRYPOINT=/api
WORKDIR /
COPY . .
RUN npm install && npm run build 
FROM nginx:alpine
COPY  --from=Builder ./dist/ /usr/share/nginx/html/
EXPOSE 80
