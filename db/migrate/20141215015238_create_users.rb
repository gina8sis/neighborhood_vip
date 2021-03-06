class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :postal_code
      t.string :facebook_id
      t.string :password_digest

      t.timestamps
    end
  end
end
