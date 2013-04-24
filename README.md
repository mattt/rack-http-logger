# Rack::LogMetrics

Rack::LogMetrics is Rack middleware that provides a logging endpoint for your application. HTTP request parameters are automatically formatted according to [l2met](https://github.com/ryandotsmith/l2met) and logged to

## Installation

```
$ gem install rack-log-metrics
```

## Example Usage

Rack::LogMetrics can be run as Rack middleware.

### config.ru

```ruby
require 'rack/log-metrics'

run Rack::LogMetrics
```

## Options

- `stream`: Stream to which lines are logged. Defaults to `$stdout`.
- `sync`: Print log lines to stream synchronously (not recommended for applications with high throughput). Defaults to `true`.
- `method`: Matched HTTP Method. Defaults to `LOG`
- `path`: Matched URL path. Defaults to `/`
- `source`: Source attribute in log line. Defaults to `rack-log-metrics`

## Contact

Mattt Thompson

- http://github.com/mattt
- http://twitter.com/mattt
- m@mattt.me

## License

Rack::LogMetrics is available under the MIT license. See the LICENSE file for more info.
