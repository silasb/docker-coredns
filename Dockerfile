FROM debian:8

ARG VERSION=1.1.1

ADD "https://github.com/coredns/coredns/releases/download/v${VERSION}/coredns_${VERSION}_linux_amd64.tgz" /app/

WORKDIR /app

RUN tar xvzf coredns_${VERSION}_linux_amd64.tgz && rm coredns_${VERSION}_linux_amd64.tgz
ADD Corefile /app

#ENTRYPOINT ["/app/coredns"]
CMD /app/coredns
