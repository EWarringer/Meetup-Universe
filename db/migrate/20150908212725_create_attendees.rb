class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.belongs_to :user, index: true
      t.belongs_to :meetup, index: true

      t.timestamps
    end
  end
end
