FROM node:lts-alpine

RUN npm i -g npm cspell

ENTRYPOINT [ "cspell" ]
