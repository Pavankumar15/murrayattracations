# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
more_attractions = [
  {:name => 'Golf', :description => 'Treasure Golf', :rating => '4',
    :entry => 15.00, :web => 'www.golf.com'},
  {:name => 'Circus', :description => 'Circus Skate of Murray', :rating => '2',
    :entry => 9.00, :web => 'www.circusState.com'},
  {:name => 'Theatre', :description => 'Cherry Theatre', :rating => '4',
    :entry => 12.00, :web => 'www.cherryTheatre.com'}
]
 
more_attractions.each do |attraction|
  Attraction.create!(attraction)
end
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
