class UpdateAttendeesValidations < ActiveRecord::Migration
  def change
    add_index :attendees, [:user_id, :meetup_id], unique: true
  end
end
