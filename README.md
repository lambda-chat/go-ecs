# GO ECS

ECS WebSocket サーバを Golang で書けるかの検証をしようとしたが、Docker image が動いたので AWS にデプロイはしないことにした。

## Build Image

```sh
docker build -t <any-name>:latest .
```

## Run Container

```sh
docker run -p 8080:8080 <any-name>:latest
```
