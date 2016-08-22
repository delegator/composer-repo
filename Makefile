.DEFAULT_GOAL := all

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

build: ## Compile site
	@./vendor/bin/satis build src/satis.json web

clean: ## Clean dependencies and compiled site
	rm -rf vendor
	rm -rf web/include
	rm -f web/index.html

deps: ## Install dependencies
	composer install

serve: ## Run PHP built-in webserver to preview the site
	php -S localhost:8080 -t web

all: clean deps build ## Compile site for production
