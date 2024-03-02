FROM node:lts-alpine

RUN apk update \
    && apk upgrade \
    && apk add --no-cache jq sed

COPY ./package.json ./
RUN npm i -g cspell@$(jq -r '.dependencies.cspell' ./package.json | sed 's/[^0-9.]//')
RUN rm ./package.json

ENTRYPOINT [ "cspell" ]
