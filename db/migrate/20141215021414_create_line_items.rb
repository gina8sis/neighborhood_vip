class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :order
      t.string :menu_item
      t.integer :quantity
      t.string :instruction

      t.timestamps
    end
  end
end
