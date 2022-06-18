.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: up
up: ## Start docker environment
	docker compose up -d
	docker compose logs -f

.PHONY: clean
clean: ## Clean up docker container
	docker compose down -t0

.PHONY: full_clean
full_clean: ## Clean up docker container with volume
	docker compose down -vt0
