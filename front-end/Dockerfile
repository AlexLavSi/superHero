#FROM node:alpine AS builder
#
#WORKDIR /app
#
#COPY . .
#
#RUN npm install && \
#    npm run build
#
#FROM nginx:alpine
#
#COPY --from=builder /app/dist/* /usr/share/nginx/html/

FROM node:latest

WORKDIR /usr/src/app/front-end

COPY package*.json ./

RUN npm install -g @angular/cli @angular-devkit/build-angular && npm install

EXPOSE 4200

CMD ["npm", "start"]
