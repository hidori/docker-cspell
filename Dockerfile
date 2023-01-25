FROM node:lts-alpine

run npm i -g cspell

ENTRYPOINT [ "cspell" ]
