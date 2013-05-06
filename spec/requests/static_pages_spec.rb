require 'spec_helper'

describe "static pages" do
 subject {page}
 describe "Home" do
 	before {visit root_path}
 	it {should have_selector('title', text: 'Store')}
 	describe "Last products" do 		
 			it {should have_selector('div', class: 'product-info' )} 		
 	end
 end
 describe "Contact" do
 	before {visit contact_path}
 	it {should have_selector('title', text: full_title('Contact'))}
 end
 describe "Store" do
 	before {visit store_path}
 	it {should have_selector('title', text: full_title('The Store'))}
 end
 describe "Support" do
 	before {visit support_path}
 	it {should have_selector('title', text: full_title('Support'))}
 end
 describe "Account" do
 	before {visit account_path}
 	it {should have_selector('title', text: full_title('Account'))}
 end
 it "should have the right links on the layout" do
 	visit root_path
 	click_link "Home"
 	page.should have_selector 'title', text:full_title('')
 	click_link "Support"
 	page.should have_selector 'title', text:full_title('Support')
 	click_link "My Account"
 	page.should have_selector 'title', text:full_title('Account')
 	click_link "The Store"
 	page.should have_selector 'title', text:full_title('The Store')
 	click_link "Contact"
 	page.should have_selector 'title', text:full_title('Contact')
 	
 end
end
