class AddNumberColumnToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :number, :string
  end
end
