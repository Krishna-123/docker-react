FROM node:alpine as builder

WORKDIR /frontend

COPY ./package.json .
RUN yarn install
COPY . .

RUN yarn run build


FROM nginx:alpine
EXPOSE 80
COPY --from=builder /frontend/build/ /usr/share/nginx/html

