FROM golang:1.24

WORKDIR /app

RUN go install github.com/99designs/gqlgen@latest && \
    go install github.com/air-verse/air@latest

COPY go.mod go.sum ./
RUN go mod download

COPY . .

CMD air
