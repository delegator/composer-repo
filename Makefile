.DEFAULT_GOAL := all

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

build: ## Compile site
	bin/satis build src/satis.json web

clean: ## Clean out compiled site directory
	rm -rf web
	mkdir web
	touch web/.gitkeep

serve: ## Run PHP built-in webserver to preview the site
	php -S localhost:8080 -t web

all: clean build ## Compile site for production
