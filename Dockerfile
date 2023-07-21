FROM golang as builder

WORKDIR /app

COPY app .

RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux go build -o /ps


FROM ubuntu
WORKDIR /app
COPY --from=builder /ps /app/ps


EXPOSE 8080
ENTRYPOINT [ "/app/ps" ]
