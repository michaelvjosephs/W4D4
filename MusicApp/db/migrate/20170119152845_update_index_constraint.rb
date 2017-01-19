class UpdateIndexConstraint < ActiveRecord::Migration
  remove_index :users, :email
  add_index :users, :email, unique: true
end
