require 'rails_helper'

feature "user receives confirmation after sending contact request", %Q{
  As a user
  I want to be emailed a receipt after sending a contact request
  So that I know that the email went through successfully.
} do

  scenario 'user fills out contact form' do
    #clear out mail deliveries
    ActionMailer::Base.deliveries = []

    prev_count = ContactRequest.count
    visit root_path
    fill_in 'Name', with: 'John Smith'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Message', with: 'test message'
    click_button 'send'

    expect(page).to have_content('Successfully sent your request.')
    expect(page).to_not have_content('Error please try again.')
    expect(ContactRequest.count).to eq(prev_count + 1)

    # upon registering, a confirmation email should be delivered,
    # so ActionMailer::Base.deliveries should include the email:
    expect(ActionMailer::Base.deliveries.size).to eql(1)

    # the email we just sent should have the proper subject and recipient:
    last_email = ActionMailer::Base.deliveries.last
    expect(last_email).to have_subject('Jolie has successfully received your contact request.')
    expect(last_email).to deliver_to('user@example.com')
  end
end
