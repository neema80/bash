FROM alpine:latest

LABEL MAINTAINER="Nima Bahramzadeh <nima.bahramzadeh@gmail.com>"

RUN apk add --no-cache iperf3

USER nobody

EXPOSE 5001

HEALTHCHECK --interval=5m --timeout=2s --retries=3 CMD nc -z 127.0.0.1 5001 &>/dev/null || kill 1

ENTRYPOINT [ "iperf3", "--server", "--format", "k", "--port", "5001" ]
