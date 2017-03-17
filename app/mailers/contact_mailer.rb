class ContactMailer < ApplicationMailer

  def new_contact(contact)
    @contact = contact
    mail(to: "deliens@me.com", subject: @contact.subject) do |format|
      format.html
    end
  end
end
