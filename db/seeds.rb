# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all

p1 = Product.create!(title: 'Produto 1',
               description: 'Descricao do produto 1',
               price: 10.0)

p2 = Product.create!(title: 'Produto 2',
               description: 'Descricao do produto 2',
               price: 20.0)