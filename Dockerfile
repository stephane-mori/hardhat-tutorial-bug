FROM node:20.12.0-alpine3.19

WORKDIR /usr/app

COPY package.json ./
COPY hardhat.config.ts ./   
COPY tsconfig.json ./
COPY contracts ./contracts
COPY ignition ./ignition

COPY entrypoint.sh ./

EXPOSE 8545

ENTRYPOINT ["/bin/sh", "entrypoint.sh"]
