FROM golang:1.9.2-stretch
RUN  apt-get update && apt-get install git
RUN  go get -u github.com/golang/lint/golint
RUN  go get -u honnef.co/go/tools/cmd/...
