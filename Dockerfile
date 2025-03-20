FROM golang:1.24-alpine AS builder

WORKDIR /app

COPY echo/* ./
RUN go mod download

RUN go build -o websocket-server ./main.go

FROM alpine:latest

WORKDIR /app

COPY --from=builder /app/websocket-server .

EXPOSE 8080

ENTRYPOINT ["./websocket-server"]
