# Delegator - Composer Repository

Powered by [Satis][satis].

## Requirements

 - PHP `>= 7.1` with [Composer][composer]
 - bash

## Getting Started

```bash
# Install dependencies
$ ./script/bootstrap

# Compile repository
$ ./script/build

# Preview the site at http://localhost:4000/
$ ./script/server
```

## Tips

When compiling this Satis repository, you will quickly exhaust GitHub's
unauthenticated request/rate limit due to the repeated fetching of repository
metadata. If you have not done so already, composer will prompt you to create a
GitHub personal access token, and composer will cache your credentials in
`~/.composer/auth.json`.

## Deployment

For deployment, we suggest that you place your GitHub access token in the
`COMPOSER_AUTH` environment variable. Visit
https://github.com/settings/tokens/new?scopes=repo to create a token with the
required privileges.

```bash
# Place your auth token in the environment
$ export COMPOSER_AUTH='{"github-oauth": {"github.com": "your_token_here"}}'

# Compile the repository for production
$ ./script/dist
```

[composer]: https://getcomposer.org/
[satis]: https://github.com/composer/satis
