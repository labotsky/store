require 'spec_helper'

describe "products" do
	subject {page}
	let(:category) { FactoryGirl.create(:category) }
	let(:product) { FactoryGirl.create(:product) }
	before do
		FactoryGirl.create(:category)  
		FactoryGirl.create(:product)
		visit root_path 
	end

	describe "add item to cart" do  		
		it "should increment the count" do  		  				
			expect { click_link "Add to Cart" }.to change(LineItem, :count).by(1)
		end  	
	end
	describe "view page product" do
		before { click_link "View" }		
			it "should have right content" do
			should have_content product.title
			should have_content product.description
			should have_content product.price
			should have_selector 'img'
		end
	end

	describe "left menu product/category" do		
		it "should have left menu category/product" do
			should have_selector 'li', text: category.title
			should have_selector 'li', text: product.title
		end
	end
end
