class Order < ActiveRecord::Base

belongs_to :user
has_many :menu_items, through: :line_item

end
