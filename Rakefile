require "bundler"
Bundler.setup

gemspec = eval(File.read("rack-http-logger.gemspec"))

task :build => "#{gemspec.full_name}.gem"

file "#{gemspec.full_name}.gem" => gemspec.files + ["rack-http-logger.gemspec"] do
  system "gem build rack-http-logger.gemspec"
end
