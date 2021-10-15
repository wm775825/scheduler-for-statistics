all: local

local: fmt vet
	GOOS=linux GOARCH=amd64 go build -o=bin/scheduler-for-statistics ./cmd/scheduler

build: local
	docker build --no-cache . -t wm775825/scheduler-for-statistics:v0

push: build
	docker push wm775825/scheduler-for-statistics:v0

fmt:
	go fmt ./...

vet:
	go vet ./...

clean: fmt vet
	sudo rm -f scheduler-for-statistics
