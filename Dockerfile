FROM node:lts-alpine

ARG CSPELL_VERSION=6.26.3

RUN npm i -g npm cspell@${CSPELL_VERSION}
