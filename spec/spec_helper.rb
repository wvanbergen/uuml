require 'rubygems'
require 'bundler/setup'

require 'uuml'

require 'rspec'

class MockResponse
  attr_accessor :body
  def initialize(body); @body = body; end
end

def mock_response(body)
  MockResponse.new(body)
end

RSpec.configure do |config|
  
end
