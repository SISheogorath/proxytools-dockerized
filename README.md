InspIRCd ban list proxy generator
===

Simply project to generate proxy ban lists like others generate proxy lists to jumb bans or use spambots.

## How to use

```console
docker build -t proxytools:local .
docker run --rm proxytools:local > ./badhost.conf
docker rmi proxytools:local
```

Once you have the `badhost.conf` you can copy it to your servers and include it into your configs.

