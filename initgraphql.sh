#!/bin/sh

go mod init github.com/andrade-felipe-dev &&
printf '// +build tools\npackage tools\nimport (_ "github.com/99designs/gqlgen"\n _ "github.com/99designs/gqlgen/graphql/introspection")' | gofmt > tools.go &&
go mod tidy &&
go run github.com/99designs/gqlgen init &&

go run server.go
