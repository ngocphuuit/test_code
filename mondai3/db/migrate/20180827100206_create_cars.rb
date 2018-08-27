class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :customer_name
      t.integer :phone
      t.string :address
      t.string :name
      t.string :car_type
      t.integer :model
      t.string :color
      t.integer :price
      t.references :maker, foreign_key: true

      t.timestamps
    end
  end
end
