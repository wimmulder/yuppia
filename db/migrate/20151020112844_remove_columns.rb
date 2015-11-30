class RemoveColumns < ActiveRecord::Migration
  def self.up
    remove_column :events, :generated
  end
end
