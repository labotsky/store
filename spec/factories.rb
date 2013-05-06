FactoryGirl.define do
	factory :category do
		title "test"
		desciption "test_description"
	end
	factory :product do
		title "test"
		description "test_description"
		price 100
		category
	end
end