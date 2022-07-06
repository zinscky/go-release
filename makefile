BINARY_NAME=${CI_PROJECT_NAME}
 
tidy:
	go mod tidy

build:
	go build -o ./bin/${BINARY_NAME} ./cmd/main.go

test:
	go test ./... -v -coverprofile .coverage.txt
	go tool cover -func .coverage.txt
	go tool cover -html=.coverage.txt -o coverage.html

godoc:
	gomarkdoc -u -o ./docs/docs.md ./internal/...

update_deps:
	go get -u ./...
