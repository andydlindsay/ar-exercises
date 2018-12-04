require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@annual_revenue = Store.sum(:annual_revenue)
puts "Annual revenue: #{@annual_revenue}"

@average_revenue = @annual_revenue / Store.count
puts "Average revenue: #{@average_revenue}"

@stores_making_gt_1M = Store.where('annual_revenue >= ?', 1_000_000).count
puts "Number of stores making 1M or more: #{@stores_making_gt_1M}"
