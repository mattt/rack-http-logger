require 'bundler'
Bundler.require

use Rack::LogMetrics
run lambda { [404, {'Content-Type' => 'text/html'}, ['Page Not Found']] }
