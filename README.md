## Docker Run

```sh
docker run -d\
 --name stunnel-for-x\
 -v /local/path/to/{PRIVATE_KEY}:/etc/stunnel/{PRIVATE_KEY}\
 -v /local/path/to/stunnel.conf:/etc/stunnel/stunnel.conf\
 -p HOST_PORT:CONTAINER_PORT\
  tjhorlacher/stunnel-alpine:latest
```
