FROM node:alpine
WORKDIR /server-node
COPY ./package.json .
RUN npm install
COPY . .
EXPOSE 5000
CMD ["npm", "start"]