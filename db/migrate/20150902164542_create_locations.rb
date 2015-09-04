class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :hall
      t.string :city
      t.text :adress
      t.text :description

      t.timestamps null: false
    end
  end
end