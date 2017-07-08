# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tweet.delete_all
Usuario.delete_all


user1 = Usuario.create!(name:"Felipe", email:"felipe.maturana.g@usach.cl")
user2 = Usuario.create!(name:"Daniela", email:"Daniela.moralesf@mayor.cl")


user1.tweet.build(contenido:"Contenido de prueba primer tweet").save
user2.tweet.build(contenido:"Contenido de prueba segundo tweet").save
user2.tweet.build(contenido:"Contenido de prueba tercer tweet").save
user1.tweet.build(contenido:"Contenido de prueba cuarto tweet").save