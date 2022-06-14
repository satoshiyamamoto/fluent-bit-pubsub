FROM golang:1.12

ENV GO111MODULE on
ENV GIT_SSL_NO_VERIFY=1

COPY . /go/pubsub/

WORKDIR /go/pubsub

RUN go build -buildmode=c-shared -o pubsub.so .
