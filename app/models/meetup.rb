class Meetup < ActiveRecord::Base
  has_many :attendees
  has_many :users, through: :attendees
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  validates :description, presence: true
end
