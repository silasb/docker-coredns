# CoreDNS

## Getting Started

``` sh
$ DNS_ID=$(docker run --name dns -d -p 53:53/udp -p 53:53 silasb/coredns)
$ docker logs -f $DNS_ID
```

dig the server and watch the server logs

``` sh
dig @127.0.0.1 www.google.com
```

## Custom Configuration

``` sh
$ docker run -d \
		--name dns \
		-v $(pwd)/Corefile:/app/Corefile \
		-p 53:53/udp -p 53:53 \
		silasb/coredns
```

## Developing

```sh
$ ./build.sh
```
