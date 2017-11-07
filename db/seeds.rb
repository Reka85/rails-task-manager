# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

parameters = [
  {title: "Wash dishes", date_of_creation: Date.parse("2017/11/05"), done: true},
  {title: "Walk the dog", date_of_creation: Date.parse("2017/11/05"), done: false},
  {title: "Clean room", date_of_creation: Date.parse("2017/11/05"), done: true}
]

parameters.each do |t|
  Task.create(t)
end
