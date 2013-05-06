class Category < ActiveRecord::Base
  attr_accessible :desciption, :title
  has_many :products
end
