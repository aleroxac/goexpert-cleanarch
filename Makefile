## ---------- MAIN
.PHONY: test
test: ## Run unit-tests
	@go test -v ./...

.PHONY: up
up: ## put the compose containers up
	@docker-compose up -d

.PHONY: down
down: ## put the compose containers down
	@docker-compose down

.PHONY: serve
serve: ## run the rest-api, grpc and graphql servers
	@cd cmd/orders && go run main.go wire_gen.go
	@cd -
