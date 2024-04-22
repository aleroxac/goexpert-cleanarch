## ---------- MAIN
.PHONY: test
test: ## Run unit-tests
	@go test -v ./...



## ---------- GRCP
# .PHONY: install-protoc
# install-protoc: ## Install protoc
# 	@if [ ! -f /usr/local/bin/protoc ]; then \
# 		wget -O /tmp/protoc.zip https://github.com/protocolbuffers/protobuf/releases/download/v26.1/protoc-26.1-linux-x86_64.zip; \
# 		unzip /tmp/protoc.zip -d ~/.local/; \
# 		sudo ln -s ~/.local/bin/protoc /usr/local/bin/protoc; \
# 		go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28; \
# 		go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2; \
# 	else \
# 		echo "protoc: [INTALLED]"; \
# 	fi

# .PHONY: install-evans
# install-evans: ## Install evans
# 	@if [ ! -f /usr/local/bin/evans ]; then \
# 		wget -O /tmp/evans.tar.gz https://github.com/ktr0731/evans/releases/download/v0.10.11/evans_linux_amd64.tar.gz; \
# 		tar -xzvf /tmp/evans.tar.gz; \
# 		sudo mv evans /usr/local/bin; \
# 	else \
# 		echo "evans: [INTALLED]"; \
# 	fi

# .PHONY: install-grpc
# install-grpc: install-grpc install-evans ## Install all needed to work with grpc using go

# .PHONY: init-grpc
# init-grpc: ## Generate grpc files
# 	@protoc --go_out=. --go-grpc_out=. internal/infra/grpc/protofiles/order.proto



## ---------- GRAPHQL
# .PHONY: install-graphql
# install-graphql: ## Install gqlgen
# 	@if [ ! -f ${HOME}/.go/bin/gqlgen ]; then \
# 		go get github.com/99designs/gqlgen; \
# 		go install github.com/99designs/gqlgen; \
# 		printf '// +build tools\npackage tools\nimport (_ "github.com/99designs/gqlgen"\n _ "github.com/99designs/gqlgen/graphql/introspection")' | gofmt > tools.go; \
# 		go mod tidy; \
# 	else \
# 		echo "gqlgen: [INSTALLED]"; \
# 	fi

# .PHONY: init-graphql
# init-graphql: ## Initialize gqlgen
# 	@go run github.com/99designs/gqlgen init || true
# 	@mv -r graph/.* internal/infra/graph && rmdir graph
	
# .PHONY: gen-graphql
# gen-graphql: ## Generate graphql files with gqlgen 
# 	@go run github.com/99designs/gqlgen generate
# 	@mv -r graph/.* internal/infra/graph && rmdir graph