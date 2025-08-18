test:
	@echo "test"
gqlgen:
	go run github.com/99designs/gqlgen generate
entgen:
	go generate ./...