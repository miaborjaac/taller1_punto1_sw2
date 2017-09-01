class CreateDrinks < ActiveRecord::Migration[5.1]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :kind
      t.string :trademark
      t.string :size
      t.string :price

      t.timestamps
    end
  end
end
