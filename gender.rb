# just copy paste

require 'sexmachine'

# For sorting into gendered arrays, oh my

  def sorting_hat(first_names)
    d = SexMachine::Detector.new(case_sensitive: false)
    female = []
    mostly_female = []
    male = []
    mostly_male = []
    andy = []

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

# If you want some quick results
  def give_data
    puts "#{female.length} ladies and their names are... \n #{female}" 
    puts "#{male.length} dudes and their names are... \n #{male}"
    puts "#{mostly_female.length} maybe-ladies and their names are... \n #{mostly_female}"
    puts "#{mostly_male.length} maybe-dudes and their names are... \n #{mostly_male}"
    puts "#{andy.length} andies and their names are... \n #{andy}"
  end

# For sorting into array to later be mapped into JSON

  def new_sorting_hat(first_names)
    d = SexMachine::Detector.new(case_sensitive: false)
    new_first_names = []

    first_names.each_with_index do |name, i|
      name_check = name.scan(/^\w+/)[0].to_s

      if d.get_gender(name_check) == :female
        new_first_names << name
        new_first_names.push("female")
        new_first_names.push(1)
      elsif d.get_gender(name_check) == :male
        new_first_names << name
        new_first_names.push("male")
        new_first_names.push(1)
      elsif d.get_gender(name_check) == :mostly_female
        new_first_names << name
        new_first_names.push("mostly_female")
        new_first_names.push(1)
      elsif d.get_gender(name_check) == :mostly_male
        new_first_names << name
        new_first_names.push("mostly_male")
        new_first_names.push(1)
      else
        new_first_names << name
        new_first_names.push("andy")
        new_first_names.push(1)
      end
    end
    return new_first_names
  end

# mapping into JSON

list_into_three = result.each_slice(3).to_a.map{|s| {name: s[0], gender: s[1], weight: s[2]} }
puts list_into_three.to_json


