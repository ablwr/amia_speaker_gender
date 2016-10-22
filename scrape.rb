# easy copy-paste access to debugging in irb
require 'nokogiri'
amia_doc = Nokogiri::HTML(File.open("program.html"))
first_names = amia_doc.search("li").collect{|e| e.text.split(" ").first }
