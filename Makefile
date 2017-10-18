# Go parameters
GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
CLI_BINARY_NAME=pouch
GOPATH=$(shell cd ../../../..; pwd)

check:
	@echo "my check"

unit-test: ## run go test
	@echo "unittest"
	go version
	
