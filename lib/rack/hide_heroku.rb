
module Rack
  
  class HideHeroku
    
    def initialize(app)
      @app=app
    end

    def call(env)
      @status, @headers, @response = @app.call(env)
      @request = Rack::Request.new(env)
      [@status, _apply_headers, @response]
    end

    private

      def _apply_headers
        if /\.herokuapp\.com\/?.*/ =~ @request.url
          @headers['X-Robots-Tag'] = 'noindex, nofollow'
        end
        if /localhost/ =~ @request.url
          @headers['X-Robots-Tag'] = 'NICE'
        end
        @headers
      end
    
  end
  
end
