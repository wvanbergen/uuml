# encoding: utf-8

class Uuml::Middleware
  
  attr_reader :app
  
  def initialize(app)
    @app = app
  end
  
  def call(env)
    status, headers, response = @app.call(env)
    
    if headers['Content-Type'] == 'text/html; charset=utf-8'
      response.body = Uuml::HTML.convert(response.body)
    end
    [status, headers, response]
  end
end