FROM golang:1.9

COPY . /go/src/github.com/harlow/go-micro-services
WORKDIR /go/src/github.com/harlow/go-micro-services
RUN export GIT_SSL_NO_VERIFY=1 \
&&  go get gopkg.in/mgo.v2 \
&&  go get github.com/bradfitz/gomemcache/memcache \
&&  go install -ldflags="-s -w" ./cmd/...
