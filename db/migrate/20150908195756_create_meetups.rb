class CreateMeetups < ActiveRecord::Migration
  def change
    create_table :meetups do |table|
      table.string :name, null: false
      table.string :location
      table.text :description

      table.timestamps
    end
  end
end
