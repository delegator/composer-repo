desc 'Compile site for production'
task default: %w{clean deps build minify}

desc 'Compile site'
task :build do
  sh './vendor/bin/satis build src/satis.json web'
end

desc 'Minify HTML'
task :minify do
  sh 'php script/htmlmin.php'
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
end

desc 'Run PHP built-in webserver to preview the site'
task :serve do
  sh 'php -S 0.0.0.0:8080 -t web'
end
