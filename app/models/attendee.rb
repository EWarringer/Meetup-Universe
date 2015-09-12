class Attendee < ActiveRecord::Base
  belongs_to :user
  belongs_to :meetup
  validates :user_id, presence: true, uniqueness: { scope: :meetup_id }
  validates :meetup_id, presence: true, uniqueness: { scope: :user_id }
end
