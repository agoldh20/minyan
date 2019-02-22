class AddDayColumnToMinyanTracker < ActiveRecord::Migration[5.2]
  def change
    add_column :minyan_trackers, :day, :string
  end
end
