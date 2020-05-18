# docker-minidlna
Docker image for the MiniDLNA based on Ubuntu 20.04 LTS

# Usage:
```sh
docker run --name=my-merjasec-minidlna \
-it -d \
--dns=8.8.8.8 --dns=8.8.4.4 \
-h minidlna.gf.si \
-p 8200:8200 \
-p 1900:1900/udp \
-v /data:/var/lib/minidlna \
-e "TZ=Europe/Ljubljana" \
merjasec/minidlna:latest
```

https://hub.docker.com/r/merjasec/minidlna/
