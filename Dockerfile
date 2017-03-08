FROM debian:8

ARG VERSION=006

ADD "https://github.com/coredns/coredns/releases/download/v${VERSION}/coredns_${VERSION}_linux_x86_64.tgz" /app/

WORKDIR /app

RUN tar xvzf coredns_${VERSION}_linux_x86_64.tgz && rm coredns_${VERSION}_linux_x86_64.tgz
ADD Corefile /app

#ENTRYPOINT ["/app/coredns"]
CMD /app/coredns
