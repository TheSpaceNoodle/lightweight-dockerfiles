FROM alpine

ARG PORT

RUN apk add --update nodejs npm

WORKDIR /app

COPY package*.json .

RUN npm ci

COPY . .

EXPOSE ${PORT}
