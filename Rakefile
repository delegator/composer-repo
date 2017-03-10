desc 'Compile site for production'
task default: %w{clean deps build}

desc 'Compile site'
task :build do
  sh './vendor/bin/satis build src/satis.json web'
end

desc 'Clean dependencies and compiled site'
task :clean do
  sh 'rm -rf vendor'
  sh 'rm -rf web/include'
  sh 'rm -f web/index.html'
end

desc 'Install dependencies'
task :deps do
  if ENV['NETLIFY'] == 'true'
    sh '/opt/buildhome/.phpbrew/bin/composer install'
  else
    sh 'composer install'
  end
end

desc 'Run PHP built-in webserver to preview the site'
task :serve do
  sh 'php -S localhost:8080 -t web'
end
