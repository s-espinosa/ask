FactoryGirl.define do
  factory :question do
    sequence :text do |n|
      "Why#{n}?"
    end
  end
end
