# grpc-hello-world

## What is this?

A network confirmation tool when building a server infrastructure for grpc application.

## How to use

### 1. Start up a server

```
$ docker run -e PORT=443 -p 443:443 enm10k/grpc-hello-world greeter_server
```

### 2. Get a container's IP address

This step is necessary if the server and client are on the same machine.

```
$ docker inspect $(docker ps -q|head -n1)|jq ".[0].NetworkSettings.IPAddress"
"172.17.0.2"
```

### 3. Hello World

```
$ echo "ADDRESS=172.17.0.2:443" > env.list
$ docker run --env-file ./env.list enm10k/grpc-hello-world greeter_client
2017/01/19 13:55:52 Greeting: Hello world
```
