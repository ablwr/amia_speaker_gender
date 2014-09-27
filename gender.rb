require 'rubygems'
require 'bundler/setup'
require 'sexmachine'

d = SexMachine::Detector.new(case_sensitive: false)

first_names.each do |name|
  d = SexMachine::Detector.new(case_sensitive: false)

  female = []
  male = []
  andy = []

  name = name.scan(/^\w+/)[0].to_s

  if d.get_gender("name") == :female
    female.push(name)
  elsif d.get_gender("name") == :male
    male.push(name)
  else
    andy.push(name)
  end

end