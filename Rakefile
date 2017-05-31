desc 'Compile site for production'
task default: %w{clean deps build minify}

desc 'Compile site'
task :build do
  sh './vendor/bin/satis build src/satis.json web'
end

desc 'Minify HTML'
task :minify do
  sh './node_modules/.bin/html-minifier -c _html-minifier-conf.json web/index.html -o web/tmp.html'
  sh 'mv web/tmp.html web/index.html'
end

desc 'Clean dependencies and compiled site'
task :clean do
  sh 'rm -rf vendor'
  sh 'rm -rf web/include'
  sh 'rm -f web/index.html'
end

desc 'Install dependencies'
task :deps do
  sh 'composer install --no-dev --no-interaction --quiet --optimize-autoloader'
  sh 'yarn install --pure-lockfile'
end

desc 'Run PHP built-in webserver to preview the site'
task :serve do
  sh 'php -S 0.0.0.0:8080 -t web'
end
