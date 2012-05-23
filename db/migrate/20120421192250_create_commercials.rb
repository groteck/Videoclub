class CreateCommercials < ActiveRecord::Migration
  def change
    create_table :commercials do |t|
      t.string :url

      t.timestamps
    end
  end
end
