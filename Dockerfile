FROM node:alpine
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
COPY ./ ./
RUN npm i
RUN npm install -g nodemon@latest
EXPOSE 5000
CMD ["npm", "start"]