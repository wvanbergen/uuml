# encoding: utf-8

require 'spec_helper'

describe Uuml::Middleware do
  
  let(:env) { Hash.new }
  let(:app) { mock('app') }
  subject { Uuml::Middleware.new(app) }

  it "should replace stuff in UTF8 HTML responses" do
    app.stub(:call).and_return([200, { 'Content-Type' => 'text/html; charset=utf-8' }, mock_response('<li>lunch</li>')])
    status, headers, response = subject.call(env)
    response.body.should =~ /lünch/
  end

  it "should not replace stuff in non-UTF8 HTML responses" do
    app.stub(:call).and_return([200, { 'Content-Type' => 'text/html; charset=iso-8859-1' }, mock_response('<li>lunch</li>')])
    status, headers, response = subject.call(env)
    response.body.should_not =~ /lünch/
  end

  it "should not replace in JSON responses" do
    app.stub(:call).and_return([200, { 'Content-Type' => 'application/json; charset=utf-8' }, mock_response('{ "lunch": "super" }')])
    status, headers, response = subject.call(env)
    response.body.should_not =~ /lünch/
  end
end