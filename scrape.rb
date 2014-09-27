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
    first_names = amia_doc.search("p").collect{|e| e.text.split(/\n/) }.flatten!
    first_names.delete_if{|str| str.length > 50}
    first_names.delete_if{|str| str.include?("AMIA") || str.include?("Chair") || str.include?("Speaker")}
    first_names.delete_if{|str| str == " " || str == "."}
    first_names.delete_if{|str| str[0].to_i.to_s == str[0]}
    return first_names
  end

  def data_organizer(first_names)
    first_names.each_with_index do |name, i|
      if name.length > 25
        first_names.delete_at(i)
      end
    end
  end

end

# easy access to debugging in irb
require 'nokogiri'
require 'open-uri'
require 'sexmachine'
amia_url = 'http://www.amiaconference.net/the-preliminary-program/'
amia_doc = Nokogiri::HTML(open(amia_url).read)
first_names = amia_doc.search("p").collect{|e| e.text.split(/\n/) }.flatten!
first_names.delete_if{|str| str.length > 70}
first_names.delete_if{|str| str.include?("AMIA") || str.include?("Chair") || str.include?("Speaker")}
first_names.delete_if{|str| str == " " || str == "."}
first_names.delete_if{|str| str[0].to_i.to_s == str[0]}
return first_names


# What about if the string is less than a certain # of characters?
# AND remove strong tags
# if male, here. if female, here. if other, manual screen?

