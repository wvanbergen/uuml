# encoding: utf-8

module Uuml::HTML
  extend self
  
  TEXT_TAGS = %w{title p a li h1 h2 h3 h4 h5 h6 div span option strong em b i u}
  
  def convert(html)
    replacer = lambda do |node| 
      node.content = node.content.
                          gsub(/(?<![Qq])ue/, 'ü').
                          gsub(/(?<![QqOoAa])u(?![i])/, 'ü').
                          gsub(/(?<![QqOoAa])U(?![Ii])/, 'Ü')
    end
    condition = TEXT_TAGS.map { |t| "parent::#{t}"}.join(' or ')

    doc = Nokogiri::HTML(html)
    doc.xpath("//text()[#{condition}]").each(&replacer)
    doc.xpath('//@alt').each(&replacer)
    doc.xpath('//@title').each(&replacer)
    doc.to_s
  end
end
