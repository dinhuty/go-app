FROM golang:1.24

WORKDIR /app

RUN go install github.com/99designs/gqlgen@latest

COPY go.mod go.sum ./
RUN go mod download

COPY . .

CMD ["go", "run", "server.go"]
