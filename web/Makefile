GIT_ROOT=$(shell git rev-parse --sq --prefix .. HEAD)

all:
	@echo $(GIT_ROOT)
	rm -rf .git
	git init
	git checkout --orphan gh-pages
	git config user.name "Delegator Repo"
	git config user.email "webmaster@delegator.com"
	git add .
	git commit -am "Compiled site from $(GIT_ROOT)"
	git remote add origin git@github.com:delegator/composer-repo.git
	git push origin gh-pages --force
