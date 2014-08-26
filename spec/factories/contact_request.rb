FactoryGirl.define do
  factory :contact_request do
    sequence(:name) {|n| "John Doe #{n}"}
    sequence(:email) {|n| "joe#{n}@bloggs.com"}
    sequence(:message) {|n| "example message #{n}"}
  end
end
