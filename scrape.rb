require 'nokogiri'
require 'open-uri'

class AMIA_Scraper
  attr_reader :amia_url
  attr_reader :flatiron_doc

  def initialize
    @amia_url = 'http://www.amiaconference.net/the-preliminary-program/'
    @amia_doc = Nokogiri::HTML(open(@amia_url).read)
  end

  def name_grabber(amia_doc)
    # Need to grab first word after every br tag in a p class
    # first word = all letters before " " and after every \n
    amia_doc.css('br').remove_class('strong').each{ |br| br.replace("\n") }
    first_names = amia_doc.search("p").collect{|e| e.text.split(/\r?\n/) }.flatten!.collect {|e| e.scan(/^\w+/).first }.compact!
    return first_names
  end

end

# easy access to debugging in irb
# require 'nokogiri'
# require 'open-uri'
# require 'sexmachine'
# amia_url = 'http://www.amiaconference.net/the-preliminary-program/'
# amia_doc = Nokogiri::HTML(open(amia_url).read)
# amia_doc.css('br').each{ |br| br.replace("\n") }
# first_names = amia_doc.search("p").collect{|e| e.text.split(/\r?\n/) }.flatten!.collect {|e| e.scan(/^\w+/).first }.compact!
# return first_names


    first_names.each do |name|
      d = SexMachine::Detector.new(case_sensitive: false)
      d.get_gender("name")
    end