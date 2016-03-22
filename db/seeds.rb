# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    cribs = Crib.create([{location: "East Legon", no_of_tenants: 2, status: "available", owner_id: 1}, {location: "tema", no_of_tenants: 1, status: "booked", owner_id: 1}, {location: "madina", no_of_tenants: 3, status: "available", owner_id: 1},  {location: "botwe", no_of_tenants: 4, status: "available", owner_id: 1}])
    tenants = Tenant.create([{first_name: "Dora", last_name: "Abaka", age: 18, crib_id: 1}, {
    	first_name: "Dora", last_name: "Abaka", age: 18, crib_id: 1},
    	{first_name: "Ama", last_name: "Abebrese", age: 19, crib_id: 2},
    	{first_name: "Rhoda", last_name: "owusua", age: 18, crib_id: 3},
    	{first_name: "Adwoa", last_name: "Manu", age: 20, crib_id: 1},
    	{first_name: "Sandra", last_name: "Baaba", age: 18, crib_id: 2},
    	{first_name: "Afia", last_name: "Nyamekye", age: 21, crib_id: 1},
    	{first_name: "juli", last_name: "Siaw", age: 17, crib_id: 7}
    	])