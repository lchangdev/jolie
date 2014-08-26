class StaticPagesController < ApplicationController

  def homepage
    @contact_request = ContactRequest.new
  end

  def create
    @new_contact_request = ContactRequest.new
    @contact_request = ContactRequest.new(contact_request_params)
    if @contact_request.save
      ContactRequestMailer.receipt(@contact_request[:name], @contact_request[:email]).deliver
      flash[:notice] = "Successfully sent your request."
      redirect_to root_path
    else
      flash[:notice] = "Error please try again."
      render root_path
    end
  end

  private

  def contact_request_params
    params.require(:contact_request).permit(:name, :email, :message)
  end
end
