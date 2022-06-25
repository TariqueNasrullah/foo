FROM alpine

WORKDIR /go/src/github.com/TariqueNasrullah/foo
COPY foo /go/src/github.com/TariqueNasrullah/foo/

# if this package is not installed then you might get TLS Handshake Error EOF
RUN apk add --update --no-cache ca-certificates

ENV GOPATH /go

ENTRYPOINT /go/src/github.com/TariqueNasrullah/foo/foo

# Service listens on port 4000.
EXPOSE 8088
