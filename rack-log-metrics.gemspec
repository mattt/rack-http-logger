# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rack/log-metrics"

Gem::Specification.new do |s|
  s.name        = "rack-log-metrics"
  s.authors     = ["Mattt Thompson"]
  s.email       = "m@mattt.me"
  s.homepage    = "http://mattt.me"
  s.version     = Rack::LogMetrics::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = "Rack::LogMetrics"
  s.description = "Log metrics from HTTP request parameters according to l2met conventions."

  s.add_development_dependency "rake"

  s.add_dependency "rack", "~> 1.5"

  s.files         = Dir["./**/*"].reject { |file| file =~ /\.\/(bin|example|log|pkg|script|spec|test|vendor)/ }
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
