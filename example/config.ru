require 'bundler'
Bundler.require

use Rack::HTTPLogger
run lambda { [404, {'Content-Type' => 'text/html'}, ['Page Not Found']] }
