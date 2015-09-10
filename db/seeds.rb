# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')
require 'faker'
50.times do
  User.create(
    provider: Faker::Company.name,
    uid: "#{rand(10000..90000)}",
    username: Faker::Internet.user_name,
    email: Faker::Internet.email,
    avatar_url: Faker::Avatar.image
  )
end

Meetup.create( name: "Ruby Group", location: "Boston, MA", description: "We get together to discuss everything Ruby! Be sure to bring your computer.", )
Meetup.create( name: "Fantasy Football", location: "Seattle, WA", description: "Join a league or just watch the games!")
Meetup.create( name: "Biking club", location: "Paris, France", description: "if you have a bike, you are invited! Biking crew in Paris France, every Thursday morning")
Meetup.create( name: "Poker Party", location: "Las Vegas, NV", description: "Bring your game face, bring your wallet. It's time to play some poker")
Meetup.create( name: "Chess Club", location: "mom's basement", description: "join the chess club where we conquer the chess board")
Meetup.create( name: "Drinking Club", location: "the roof", description: "You don't have to know or enjoy anything. Just drink!")
Meetup.create( name: "Coders committee", location: "San Fransisco", description: "Back end, front end, full stack, just have your computer and code!")
