# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all

day = (1..28).to_a
month = (1..12).to_a
year = (1900..2020).to_a

COLORS = %w(black gold pink purple turquoise green scarlet)

# cat = Cat.create(name: 'bob', birth_date: '2020/2/4', color: 'gold', sex: 'F', description: 'this is a nice cat')

100.times do 
    cat = Cat.new
    cat.name = Faker::FunnyName.name
    # debugger
    cat.birth_date = "#{year.sample}/#{month.sample}/#{day.sample}"
    cat.color = COLORS.sample
    cat.sex = ['M', 'F'].sample
    cat.description = Faker::Hipster.sentence
    cat.save!
end
