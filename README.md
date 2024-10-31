# docker-aarch64-alpine #

This docker image contains firmware for the [netgear R6250 router firmware version V1.0.3.6_10.1.3](http://www.downloads.netgear.com/files/GDC/R6250/R6250-V1.0.3.6_10.1.3.zip)

## Docker ##

```bash

# this will be a shared folder between the host and alpine vm
# run the mount.sh script in the /root/ directory

mkdir shared

docker run -v ./shared:/alpine/shared/ -p 2222:2222 zackc123/alpine-container:latest

ssh root@locahost -p 2222

# password is root
```

## Building  Docker ##

### Linux ###

```bash
git clone https://github.com/0x05a/docker-aarch64-alpine.git

cd docker-aarch64-alpine
# download the release files and move them to this directory

# build the docker image
docker build -t --rm aarch64-alpine .
```

## Running ##

```bash
# to use a shared directory with the alpine box replace ./shared with whatever directory you want to share

docker run -v ./shared:/alpine/shared/ -p 2222:2222 alpine-container:latest
```

## ssh into alpine aarch64 environment

```bash
ssh root@localhost -p 2222
# password is root
# in the alpine box run ./mount.sh in the `/root/` directory to mount it in the alpine side.
```
