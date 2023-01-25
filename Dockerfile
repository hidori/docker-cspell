FROM node:lts-alpine

ARG CSPELL_VERSION=6.19.2

RUN npm i -g npm cspell@${CSPELL_VERSION}
