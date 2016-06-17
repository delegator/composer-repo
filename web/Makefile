all:
	rm -rf .git
	git init
	git checkout --orphan gh-pages
	git config user.name "Delegator Repo"
	git config user.email "webmaster@delegator.com"
	git add .
	git commit -am "Compiled site from $(GIT_REV)"
	git remote add origin git@github.com:delegator/composer-repo.git
	git push origin gh-pages --force
