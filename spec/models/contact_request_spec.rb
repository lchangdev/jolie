require 'rails_helper'

describe ContactRequest do
  it 'sends an email when parking is successful' do
    user_request = FactoryGirl.create(:contact_request)
    ContactRequestMailer.receipt(user_request.name, user_request.email)
    expect(ActionMailer::Base.deliveries.count).to eql(1)
  end
end
