class Product < ActiveRecord::Base
  attr_accessible :description, :price, :title, :category_id, :translations
  belongs_to :category
  has_many :line_items
  translates :description, :title
  
  accepts_nested_attributes_for :translations
end
