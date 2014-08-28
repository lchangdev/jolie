class ContactRequestMailer < ActionMailer::Base
  default from: "sales@jolieonline.com"

  def receipt(name, email)
    @name = name
    @email = email
    mail(to: @email, subject: "Jolie has successfully received your contact request.")
  end

  def new_contact_request(name, email, message)
    @name = name
    @email = email
    @message = message
    mail(to: "sales@jolieonline.com", subject: "New Request from: #{@name}")
  end
end
