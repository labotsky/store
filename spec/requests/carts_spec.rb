require 'spec_helper'

describe "Carts" do
  	subject {page}
	let(:category) { FactoryGirl.create(:category) }
	let(:product) { FactoryGirl.create(:product) }
	before do
		FactoryGirl.create(:category)  
		FactoryGirl.create(:product)
		visit root_path 
	end

	describe "empty cart" do		
		it "should not show" do
			find('#cart').should_not be_visible
		end
		it "should show" do
			click_link "Add to Cart"
			should have_selector '#cart'
		end
	end
end
