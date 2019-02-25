class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :photo
      t.string :category
      t.string :description
      t.string :city
      t.integer :price_day
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
