class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :street
      t.string :city
      t.string :province
      t.string :postal
      t.string :list_price
      t.string :sold_price
      t.string :sold_date
      t.string :dom
      t.string :square_feet
      t.string :storeys
      t.string :rooms
      t.string :bedrooms
      t.string :bathrooms
      t.text :description
      t.float :longitude
      t.float :latitude

      t.timestamps null: false
    end
    
  end
end
