.DEFAULT_GOAL := all

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

build: ## Compile site
	@./vendor/bin/satis build src/satis.json web

clean: ## Clean out compiled site directory
	rm -rf web/include
	rm -f web/index.html
	rm -f web/packages.json

serve: ## Run PHP built-in webserver to preview the site
	php -S localhost:8080 -t web

deploy: ## Deploy the compiled site to GitHub pages
	$(MAKE) -C web all GIT_REV=$(shell git rev-parse --short HEAD)

all: clean build ## Compile site for production
