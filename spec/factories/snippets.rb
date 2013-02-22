# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :snippet do
    post "MyText"
    post_date "2013-02-22"
  end
end
