# Delegator - Composer Repository

Powered by [Satis][satis].

# Getting Started

```bash
# Install dependencies
$ composer install

# Compile repository
$ make build

# Preview the site at http://localhost:8080/
$ make serve

# Describe available make targets
$ make help
```

# Deployment

[GitHub Pages][github-pages] (see the [`gh-pages`][gh-pages-branch] branch).

```bash
# Compile site
$ make

# After compile is successful, then
$ make deploy
```

[gh-pages-branch]: https://github.com/delegator/composer-repo/tree/gh-pages
[github-pages]: https://pages.github.com/
[satis]: https://github.com/composer/satis
