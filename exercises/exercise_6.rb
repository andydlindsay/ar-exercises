require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "John", last_name: "Stamos", hourly_rate: 50)
@store1.employees.create(first_name: "Dave", last_name: "Matthews", hourly_rate: 45)
@store1.employees.create(first_name: "Brie", last_name: "Larson", hourly_rate: 55)

@store2.employees.create(first_name: "Barb", last_name: "Ra", hourly_rate: 60)
@store2.employees.create(first_name: "Patty", last_name: "O'Lantern", hourly_rate: 55)

@employees = Employee.all
@employees.each do |employee|
    puts "Employee: #{employee.first_name} #{employee.last_name} #{employee.password}"
end
