# encoding: utf-8

class Uuml::Railtie < ::Rails::Railtie
  
  initializer "uuml.install_middleware" do |app|
    app.config.middleware.use Uuml::Middleware
  end
end
