class CreateMinyanTrackers < ActiveRecord::Migration[5.2]
  def change
    create_table :minyan_trackers do |t|
      t.integer :person_id
      t.boolean :attending

      t.timestamps
    end
  end
end
