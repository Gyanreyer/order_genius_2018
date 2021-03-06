class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :phone, null: false

      t.timestamps
    end

    add_index :restaurants, :name, unique: true
    add_index :restaurants, :phone, unique: true
  end
end
