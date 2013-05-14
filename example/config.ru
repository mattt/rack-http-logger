require 'bundler'
Bundler.require

$stdout.sync = true

use Rack::HTTPLogger
run lambda { [404, {'Content-Type' => 'text/html'}, ['Page Not Found']] }
