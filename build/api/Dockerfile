# Upstream's deployments/api.Dockerfile with these changes: the base image is pinned to
# golang:1.23 (upstream: golang, i.e. latest; 1.23 was current at the secDevLabs commit); the
# sources are copied from app/ (upstream's api/ folder); the modules are downloaded and the
# program compiled at build time, so `go run` starts offline (upstream downloads them at first
# start); and the compose command (`go run main.go`) is the CMD.
FROM docker.io/library/golang:1.23

ADD app/ /app
WORKDIR /app

RUN go mod download && go build -o /dev/null .
CMD ["go", "run", "main.go"]
