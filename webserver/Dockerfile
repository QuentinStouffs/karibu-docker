FROM node:lts-alpine3.12 as build
RUN apk --no-cache add git

RUN git clone https://github.com/QuentinStouffs/karibu-frontend.git /frontend

COPY ./ ./frontend
WORKDIR /frontend
RUN npm install
RUN npm run build

FROM nginx:1.18.0-alpine

COPY ./webserver/default.conf /etc/nginx/conf.d/default.conf
COPY --from=build /frontend/build /usr/share/nginx/html