FROM node:20-alpine
WORKDIR /usr/src/app
RUN apk add --no-cache python3 make g++ bash git
COPY app/package*.json ./
RUN npm install
COPY app/. .
EXPOSE 3000
CMD ["make", "dev"]