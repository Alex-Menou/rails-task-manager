# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Destroy all data'
Task.destroy_all
puts 'Destroy done'

puts 'Creating Task'
task = Task.create!(title: "Test Title 1", details: "Test Details 1")
puts task.title
task = Task.create!(title: "Test Title 2", details: "Test Details 2")
puts task.title
task = Task.create!(title: "Test Title 3", details: "Test Details 3", completed: true)
puts task.title
puts 'Task Created'
