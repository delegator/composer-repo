.DEFAULT_GOAL := all

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.PHONY: build
build: ## Compile site
	@./vendor/bin/satis build src/satis.json web

.PHONY: clean
clean: ## Clean dependencies and compiled site
	rm -rf vendor
	rm -rf web/include
	rm -f web/index.html

.PHONY: deps
deps: ## Install dependencies
	composer install

.PHONY: deps-netlify
deps-netlify: ## Install dependencies for deployment
	/opt/buildhome/.phpbrew/bin/composer install

.PHONY: serve
serve: ## Run PHP built-in webserver to preview the site
	php -S localhost:8080 -t web

.PHONY: all
all: clean deps build ## Compile site for production
