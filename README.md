# Frp reverse proxy docker image

A docker container for the [frp](https://github.com/fatedier/frp) reverse proxy. Support server/client side mode.

### How to use

```

docker run --name some-frp --restart always -d \ 
    --net host \
    -e MODE=server \
    -v /path/to/frp/config:/var/frp/config \
    serenader/docker-frp

```

### Network

Please use `host` network mode to make sure the container run properly.

### Environment Variables

#### `MODE`

Specify which mode to run. Available options are:

- `SERVER`: run as the server side.
- `CLIENT`: run as the client side.

Different mode requires different configuration file. For the server mode, it will require `/var/frp/config/frps.ini` file for the config. For the client mode, it will require `/var/frp/config/frpc.ini` file.

### Volume

Please attach the configuration's folder to the container:

```
-v /path/to/frp/config:/var/frp/config
```

Make sure the `frps.ini` or `frpc.ini` is exist in your configuration's folder.


### How to build

Clone this project, and run `docker build -t frp .`.
