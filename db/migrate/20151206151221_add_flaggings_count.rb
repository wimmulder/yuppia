class AddFlaggingsCount < ActiveRecord::Migration

  add_column :events, :flaggings_count, :integer

end
