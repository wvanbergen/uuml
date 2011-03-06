# encoding: utf-8

require 'spec_helper'

describe Uuml::HTML do
  it "should add umlauts to all the us within textual content" do
    Uuml::HTML.convert('<p>Uber january lunch</p>').should =~ /Über janüary lünch/
  end
  
  it "should convert ue in a single umlauted u, if not starting with a q" do
    Uuml::HTML.convert('<a>Revenue</a>').should =~ /Revenü/
  end
  
  it "should not replace que, ou or ui combinations" do
    Uuml::HTML.convert('<li>build your query</li>').should =~ /build your query/
  end

  it "should not convert text in tags that are not listed" do
    Uuml::HTML.convert('<script>lunch</script>').should_not =~ /lünch/
  end
    
  it "should not convert tags" do
    Uuml::HTML.convert('<ul><li>test</li></ul>').should_not =~ /ül/
  end
  
  it "should replace a alt and title text attributes" do
    Uuml::HTML.convert('<img alt="lunch" />').should =~ /lünch/
    Uuml::HTML.convert('<img title="lunch" />').should =~ /lünch/
  end
end
