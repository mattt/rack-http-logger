# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rack/http-logger"

Gem::Specification.new do |s|
  s.name        = "rack-http-logger"
  s.authors     = ["Mattt"]
  s.email       = "mattt@me.com"
  s.homepage    = "https://mat.tt"
  s.version     = Rack::HTTPLogger::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = "Rack::HTTPLogger"
  s.description = "Log arbitrary metrics from HTTP request parameters according to l2met conventions."

  s.add_dependency "rack", "~> 1.5"

  s.add_development_dependency "rake"

  s.files         = Dir["./**/*"].reject { |file| file =~ /\.\/(bin|example|log|pkg|script|spec|test|vendor)/ }
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
