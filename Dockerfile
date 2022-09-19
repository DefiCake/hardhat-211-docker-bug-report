FROM node:14-alpine

WORKDIR /app

COPY contracts ./contracts
COPY test ./test

COPY hardhat.config.ts .
COPY package.json .
COPY yarn.lock .

RUN ["yarn"]

ENTRYPOINT ["yarn", "test"]