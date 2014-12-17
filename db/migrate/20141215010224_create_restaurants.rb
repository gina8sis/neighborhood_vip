class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :telephone
      t.string :email
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :postal_code
      t.string :hours

      t.timestamps
    end
  end
end
