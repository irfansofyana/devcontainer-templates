#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "go version" go version
check "go installation" which go

# Test basic Go functionality
echo 'package main

import "fmt"

func main() {
    fmt.Println("Hello, Go!")
}' > test.go

check "go build" go build test.go
check "go run" go run test.go

# Clean up
rm -f test.go test

# Report result
reportResults
