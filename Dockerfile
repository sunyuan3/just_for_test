
FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y \
    wget \ 
    git \
    make \
    gcc \
    && apt-get clean

ENV GO_VERSION=1.8.3
ENV ARCH=amd64

RUN wget https://storage.googleapis.com/golang/go${GO_VERSION}.linux-${ARCH}.tar.gz \
    && tar -C /usr/local -xzf go${GO_VERSION}.linux-${ARCH}.tar.gz \
    && rm go${GO_VERSION}.linux-${ARCH}.tar.gz

RUN mkdir /go
WORKDIR /go
ENV GOPATH=/go

ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN go get -u github.com/golang/lint/golint 

COPY . /go/src/github.com/sunyuan3/just_for_test
