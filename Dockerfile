FROM golang:1.18

WORKDIR /app
COPY initgraphql.sh .

RUN chmod +x ./initgraphql.sh

RUN useradd -u 1000 -m felipe
USER felipe