FROM alpine:3

LABEL maintainer="Robert de Bock <robert@meinit.nl>"
LABEL build_date="2023-06-13"

ENV port 8000
ENV container=docker

RUN apk add --no-cache netcat-openbsd

VOLUME ["/sys/fs/cgroup"]

CMD nc -kl ${port}
