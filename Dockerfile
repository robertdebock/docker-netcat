FROM alpine:3

LABEL maintainer="Robert de Bock <robert@meinit.nl>"
LABEL build_date="2022-05-18"

ENV port 8000
ENV container=docker

RUN apk add --no-cache netcat-openbsd

VOLUME ["/sys/fs/cgroup"]

CMD nc -kl ${port}
