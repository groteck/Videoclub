class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :year
      t.decimal :time
      t.text :sinopsis
      t.float :price

      t.timestamps
    end
  end
end
