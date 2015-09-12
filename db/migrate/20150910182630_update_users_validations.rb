class UpdateUsersValidations < ActiveRecord::Migration
  def up
    change_column :users, :uid, :string, null: false, unique: true
    change_column :users, :username, :string, null: false, unique: true
    change_column :users, :email, :string, null: false, unique: true
  end
  def down
    change_column :users, :uid, :string, null: false
    change_column :users, :username, :string, null: false
    change_column :users, :email, :string, null: false
  end
end
