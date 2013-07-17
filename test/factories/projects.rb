# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
  	user
  	title "Rearden Metal"
  	teaser "It is lighter than tradiontal steel but stronger , and is to steel what steel was to iron."
  	description "it is described as greenish-blue. Among its ingredients are iron and copper."
  	goal 100000
  end
end
