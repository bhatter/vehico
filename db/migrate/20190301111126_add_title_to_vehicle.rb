class AddTitleToVehicle < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicles, :title, :string
  end
end
