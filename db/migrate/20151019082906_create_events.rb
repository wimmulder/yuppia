class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_id
      t.string :description
      t.datetime :date
      t.timestamp :generated

      t.timestamps null: false
    end
    add_index :events, :event_id
  end
end
