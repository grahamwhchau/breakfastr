# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Pastry.create ([
		{
  		name: "Croissant",
  		price_in_pence: 350,
  		description: " This traditional French pastry has a high real butter component, with lovely, light flaky layers of pastry"
  		},
  		{
  			name: "Pain au Chocolat",
  			price_in_pence: 380,
  			description: "Pain au chocolat also called a chocolatine in the south-west of France (from Occitan chocolatina)"
  			}
  			])