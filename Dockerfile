FROM golang:latest

MAINTAINER abhishekmeonly.sharma@gmail.com

RUN mkdir  /app

ADD . /app/

EXPOSE 8888

WORKDIR /app/server/

RUN go get -d -v ./...

RUN go build -o main . 


ENTRYPOINT ["/app/server/main"]
