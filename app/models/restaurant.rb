class Restaurant < ActiveRecord::Base

has_many :menu_items
has_many :users
has_many :orders

end
