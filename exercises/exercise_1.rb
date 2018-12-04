require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
burnaby = Store.new(name: "Burnaby", annual_revenue: 300_000, mens_apparel: true, womens_apparel: true)
burnaby.save

richmond = Store.new(name: "Richmond", annual_revenue: 1_260_000, womens_apparel: true, mens_apparel: false)
richmond.save

gastown = Store.new(name: "Gastown", annual_revenue: 190_000, mens_apparel: true, womens_apparel: false)
gastown.save

puts "Store count: #{Store.count}"
