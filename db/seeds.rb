# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'
include Faker

images = %w(skis.jpg lappi.jpg boots.jpg poles.jpg)

#Movie.destroy_all

3.times do
  
products = Product.create( :name => "#{App.name}", 
                           :price => rand(100..200), 
                           :description => Lorem.paragraphs.join, 
                           :cost => rand(32..100), 
                           :quantity => rand(11..100), 
                           #:image => "#{Avatar.image}", 
                           :image => "products/" + images[rand(images.length)],
                           :weight => rand(5..50) 
                          )

puts Product.inspect

end