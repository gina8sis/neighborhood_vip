class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_id
      t.text :instructions
      t.datetime :date

      t.timestamps
    end
  end
end
