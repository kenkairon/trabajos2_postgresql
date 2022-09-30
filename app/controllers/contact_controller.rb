class ContactController < ApplicationController
  def index
    @contacto = Contact.all
  end

  def create
    @contacto = Contact.new(contact_params)
    @contacto.save
    if @contacto
      redirect_to root_path
    end
  end

  def new
      @contacto = Contact.new     
  end

  def contact_params
    params.require(:contact).permit(:name,:email,:comment) 
  end
end
