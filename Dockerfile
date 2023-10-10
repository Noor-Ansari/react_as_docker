# Project build

FROM node:16-alpine as builder

WORKDIR /app

COPY package.json .

COPY package-lock.json .

RUN ["npm", "install"]

COPY . .

RUN ["npm", "run", "build"]

# Nginx setup

FROM nginx:1.23.4-alpine-slim as production

ENV NODE_ENV production

COPY --from=builder /app/build /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT ["nginx", "-g", "daemon off;"]


