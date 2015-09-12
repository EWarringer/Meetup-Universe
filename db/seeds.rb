# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')
require 'faker'

user_one = User.create( provider: "Facebook", uid: "43525235", username: "UserOne", email: Faker::Internet.email, avatar_url: Faker::Avatar.image)
user_two = User.create( provider: "Twitter", uid: "32112321", username: "UserTwo", email: Faker::Internet.email, avatar_url: Faker::Avatar.image)
user_three = User.create( provider: "SomethingIncorporated", uid: "7897896789", username: "UserThree", email: Faker::Internet.email, avatar_url: Faker::Avatar.image)

ruby_meetup = Meetup.create( name: "Ruby Meetup", location: "Boston, MA", description: "We get together to discuss everything Ruby! Be sure to bring your computer.", )
fantasy_football = Meetup.create( name: "Fantasy Football", location: "Seattle, WA", description: "Join a league or just watch the games!")

Attendee.create(user: user_one, meetup: ruby_meetup)
Attendee.create(user: user_one, meetup: fantasy_football)
Attendee.create(user: user_two, meetup: fantasy_football)
