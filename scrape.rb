# easy copy-paste access to debugging in irb

require 'nokogiri'
require 'open-uri'
require 'sexmachine'
amia_url = 'http://www.amiaconference.net/the-preliminary-program/'
amia_doc = Nokogiri::HTML(open(amia_url).read)

amia_doc.search('strong').remove
amia_doc.css('br').remove_class('strong').each{ |br| br.replace("\n") }
first_names = amia_doc.search("p").collect{|e| e.text.split(/\n/) }.flatten!

    first_names.delete_if{|str| str.length > 70 || str.length < 5 || str.include?("AMIA") || str.include?("Chair") || str.include?("Speaker") || str.include?("|") || str.include("–") }

  first_names.collect do |str|
    str.gsub!(/Dr./, "")

    if str.include?(",")
      str.gsub!(/,.*/,"")
    else
      str
    end

  end

first_names


