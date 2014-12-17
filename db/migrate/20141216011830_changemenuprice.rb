class Changemenuprice < ActiveRecord::Migration
    def change

    change_table(:menu_items) do |t|
      t.remove :price
      t.column :price, :decimal, precision: 8, scale: 2


    end


  end
end
