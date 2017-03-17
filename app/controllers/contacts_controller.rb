class ContactsController < ApplicationController
  
  def create
    @contact = Contact.new contact_params
    @contact.save
    ContactMailer.new_contact(@contact).deliver_now
    respond_to do |format|
      format.js
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end

end
