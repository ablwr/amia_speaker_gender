require 'rubygems'
require 'bundler/setup'
require 'sexmachine'

class GenderSorter

  d = SexMachine::Detector.new(case_sensitive: false)

  female = []
  mostly_female = []
  male = []
  mostly_male = []
  andy = []

  def sorting_hat(first_names)
    first_names.each do |name|
      name_check = name.scan(/^\w+/)[0].to_s
      if d.get_gender(name_check) == :female
        female.push(name)
      elsif d.get_gender(name_check) == :male
        male.push(name)
      elsif d.get_gender(name_check) == :mostly_female
        mostly_female.push(name)
      elsif d.get_gender(name_check) == :mostly_male
        mostly_male.push(name)
      else
        andy.push(name)
      end
    end
  end

  def give_data
    puts "#{female.length} ladies and their names are... \n #{female}" 
    puts "#{male.length} ladies and their names are... \n #{male}"
    puts "#{mostly_female.length} ladies and their names are... \n #{mostly_female}"
    puts "#{mostly_male.length} ladies and their names are... \n #{mostly_male}"
    puts "#{andy.length} andies and their names are... \n #{andy}"
  end
end