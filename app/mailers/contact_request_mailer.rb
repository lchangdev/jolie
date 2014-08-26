class ContactRequestMailer < ActionMailer::Base
  default from: "sales@jolieonline.com"

  def receipt(name, email)
    @name = name
    @email = email
    mail(to: @email, subject: "Jolie has successfully received your contact request.")
  end
end
