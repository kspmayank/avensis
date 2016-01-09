class WelcomeController < ApplicationController

  def index
   @registered = Registered.all
  end
  def technical
  end
  def funncreative
  end
  def quiz
  end
  def robotics
  end
  def literary
  end
  def photography
  end
  def design
  end
  def creativity
  end

  def contact
    @contact = Contact.create(contact_params)
    @contact.save
    redirect_to root_url, notice => 'Ticket generated'
  end
private 
def contact_params
params.require(:contact).permit(:name,:email,:message)
end
end
