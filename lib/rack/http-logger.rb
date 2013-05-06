module Rack #:nodoc:
  class HTTPLogger
    VERSION = '0.0.1'

    def initialize(app, options = {})
      @app = app

      @stream = options[:stream] || $stdout
      @stream.sync = true unless options.fetch(:sync, true)
      @source = options[:source] || "rack-http-logger"

      @method = options[:method] ? "#{options[:method]}".upcase : "LOG"
      @path = options[:path] || "/"
    end

    def call(env)
      return @app.call(env) unless env["REQUEST_METHOD"] == @method and env["REQUEST_PATH"] == @path

      request = Rack::Request.new(env)

      if request.media_type == "application/json" and (body = env[POST_BODY].read).length.nonzero?
        log JSON.parse(body)
      else
        log request.params
      end

      [201, {"Content-Type" => "text/plain"}, []]
    end

    private

    def log(parameters)
      return if parameters.nil? or parameters.empty?

      measures = flatten(parameters).collect{|keys, value| "#{keys.collect(&:to_s).join('.')}=#{value}"}

      @stream.puts ["source=#{@source}", *measures].join(" ")
    end

    def flatten(hash, k = [])
      return {Array(k) => hash} unless hash.is_a?(Hash)
      hash.inject({}){ |h, v| h.merge! flatten(v[-1], k + [v[0]]) }
    end
  end
end
