FROM node:14
# env set
ENV EVA_ENTRYPOINT=/api
WORKDIR /
COPY package.json /
RUN npm install && npm run build 
CMD ["npm","dev"]
# FROM nginx:alpine
# COPY  /dist/ /usr/share/nginx/html/
# EXPOSE 80
