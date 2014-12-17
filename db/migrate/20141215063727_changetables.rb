class Changetables < ActiveRecord::Migration
  def change

    change_table(:menu_items) do |t|
      t.column :category, :string

    end

    change_table(:line_items) do |t|
      t.column :order_id, :integer
      t.column :menu_item_id, :integer
      t.remove :order
      t.remove :menu_item

    end


  end



end
