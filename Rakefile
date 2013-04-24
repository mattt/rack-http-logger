require "bundler"
Bundler.setup

gemspec = eval(File.read("rack-log-metrics.gemspec"))

task :build => "#{gemspec.full_name}.gem"

file "#{gemspec.full_name}.gem" => gemspec.files + ["rack-log-metrics.gemspec"] do
  system "gem build rack-log-metrics.gemspec"
end
