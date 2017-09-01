class CreateVegetals < ActiveRecord::Migration[5.1]
  def change
    create_table :vegetals do |t|
      t.string :name
      t.string :color
      t.string :weight
      t.string :price

      t.timestamps
    end
  end
end
