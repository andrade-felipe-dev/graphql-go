FROM golang:1.20

WORKDIR /app
COPY initgraphql.sh .

RUN chmod 777 ./initgraphql.sh

RUN useradd -u 1000 -m felipe
USER felipe