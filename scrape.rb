require 'nokogiri'
require 'open-uri'

class AMIA_Scraper
  attr_reader :amia_url
  attr_reader :amia_doc

  def initialize
    @amia_url = 'http://www.amiaconference.net/the-preliminary-program/'
    @amia_doc = Nokogiri::HTML(open(@amia_url).read)
  end

  def name_grabber(amia_doc)
    amia_doc.search('strong').remove
    amia_doc.css('br').remove_class('strong').each{ |br| br.replace("\n") }
    first_names = amia_doc.search("p").collect{|e| e.text.split(/\n/) }.flatten!

    first_names.delete_if{|str| str.length > 70}
    first_names.delete_if{|str| str.include?("AMIA") || str.include?("Chair") || str.include?("Speaker") || str.include?("|")}
    first_names.delete_if{|str| str == " " || str == " " || str == "." || str == "" }
    first_names.delete_if{|str| str[0].to_i.to_s == str[0]}
    first_names
  end


# easy copy-paste access to debugging in irb

require 'nokogiri'
require 'open-uri'
require 'sexmachine'
amia_url = 'http://www.amiaconference.net/the-preliminary-program/'
amia_doc = Nokogiri::HTML(open(amia_url).read)

amia_doc.search('strong').remove
amia_doc.css('br').remove_class('strong').each{ |br| br.replace("\n") }
first_names = amia_doc.search("p").collect{|e| e.text.split(/\n/) }.flatten!

first_names.delete_if{|str| str.length > 70}
first_names.delete_if{|str| str.include?("AMIA") || str.include?("Chair") || str.include?("Speaker") || str.include?("|")}
first_names.delete_if{|str| str == " " || str == " " || str == "." || str == "" }
first_names.delete_if{|str| str[0].to_i.to_s == str[0]}
first_names

# number is 231


