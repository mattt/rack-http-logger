# Rack::HTTPLogger

`Rack::HTTPLogger` is Rack middleware that provides a logging endpoint for your application. HTTP request parameters are automatically formatted according to [l2met](https://github.com/ryandotsmith/l2met) and logged to a specified stream, such as `STDOUT`.

This is designed for anyone using Heroku, which uses [Logplex](https://devcenter.heroku.com/articles/logplex) to aggregate messages for further monitoring and analytics. With `Rack::HTTPLogger` remote events such as mobile device registrations can be collected and processed into your common log stream.

## Installation

```
$ gem install rack-http-logger
```

## Options

- `stream`: Stream to which lines are logged. _Defaults to `$stdout`_.
- `sync`: Print log lines to stream synchronously (not recommended for applications with high throughput). _Defaults to `true`_
- `method`: Matched HTTP Method. _Defaults to `LOG`_
- `path`: Matched URL path. _Defaults to `/`_
- `source`: Source attribute in log line. _Defaults to `rack-http-logger`_

## Usage

Rack::HTTPLogger can be run as Rack middleware.

### config.ru

```ruby
require 'rack/http-logger'

use Rack::HTTPLogger
```

## Contact

Mattt Thompson

- http://github.com/mattt
- http://twitter.com/mattt
- m@mattt.me

## License

Rack::HTTPLogger is available under the MIT license. See the LICENSE file for more info.
