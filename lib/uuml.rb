# encoding: utf-8

require 'nokogiri'
require 'rack'

module Uuml
  VERSION = "0.0.0"
end

require 'uuml/html'
require 'uuml/middleware'

require 'uuml/railtie' if defined?(::Rails)