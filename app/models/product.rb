class Product < ActiveRecord::Base
  attr_accessible :description, :price, :title, :category_id, :translations, :image
  belongs_to :category
  has_many :line_items
  translates :description, :title
  mount_uploader :image, ImageUploader
end
