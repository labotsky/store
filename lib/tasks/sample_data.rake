namespace :db do 
	desc "Create products and category"
	task populate: :environment do
		make_products
		make_category
	end
end

def make_products
	30.times do |n|
		print '.'
		title = Faker::Product.product_name 
		description = Faker::Lorem.paragraph
		price = 20 + Random.rand(100)
		id = 1+Random.rand(9)
		Product.create(title: title, description: description, price: price, category_id: id) 
	end
end

def make_category
	10.times do |n|
		print '.'
		title = Faker::Product.product_name 
		description = Faker::Lorem.paragraph		
		Category.create(title: title, desciption: description) 
	end
end