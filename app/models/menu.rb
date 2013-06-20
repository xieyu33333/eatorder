class Menu < ActiveRecord::Base
  attr_accessible :name, :price
  has_one :picture , :as => :imageable
end
