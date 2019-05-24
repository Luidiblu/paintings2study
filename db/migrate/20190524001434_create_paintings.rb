class CreatePaintings < ActiveRecord::Migration[5.2]
  def change
    create_table :paintings do |t|
      t.string :name
      t.text :description
      t.artist :references

      t.timestamps
    end
  end
end
