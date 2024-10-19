FROM alpine

LABEL maintainer="Orange"

RUN apk add --update nodejs npm

COPY . /src

WORKDIR /src

RUN npm install

EXPOSE 3000

ENTRYPOINT ["node", "./index.js" ]