FROM alpine:latest

RUN apk update && \
    apk upgrade && \
    apk add --no-cache git go

WORKDIR /root

RUN git clone https://github.com/quackduck/devzat

WORKDIR /root/devzat

RUN rm mainserver.yml

RUN go build

ENTRYPOINT [ "./devzat" ]
