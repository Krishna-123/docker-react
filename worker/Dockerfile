FROM node:alpine
WORKDIR /worker-node
COPY ./package.json .
RUN npm install
COPY . .
CMD ["npm", "start"]
