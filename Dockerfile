FROM node:alpine as builder
RUN npx create-react-app docker-react-node-app
WORKDIR /docker-react-node-app
COPY ./src ./src
RUN npm run build

FROM nginx:alpine
EXPOSE 80
COPY --from=builder /docker-react-node-app/build /usr/share/nginx/html/
