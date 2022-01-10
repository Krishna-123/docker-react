FROM node:alpine
RUN npx create-react-app client-react
WORKDIR /client-react
COPY ./package.json .
RUN npm install
COPY ./src ./src
RUN npm run build

FROM nginx
COPY --from=0 /client-react/build/ /usr/share/nginx/html/
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 3000