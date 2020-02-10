FROM  python:2-alpine

RUN apk add --no-cache --update nodejs make g++ npm

RUN npm install ethercalc && \
    ln -s ../../node_modules /node_modules/ethercalc/node_modules

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
