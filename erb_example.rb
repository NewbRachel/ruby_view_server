require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

y = 3
z = 5

answer1 = ERB.new "The value of <%= y %> times <%= z %>  is: <%= y * z %>"
puts answer1.result(binding)

h = {:book1 =>"The Old Man & the Sea", :book2 => "The Also Rises"}
hash1 = ERB.new "Some of my favorite Hemingway books are: <%= h.each_value {|value| puts value} %>"
puts hash1.result(binding)