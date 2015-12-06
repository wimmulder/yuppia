class AddFlaggingsCountToUsers < ActiveRecord::Migration
  add_column :users, :flaggings_count, :integer
end
