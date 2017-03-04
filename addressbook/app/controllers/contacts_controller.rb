class ContactsController < ApplicationController
  def create
  end

  def home
    redirect_to '/'
  end

  def store
    # TODO: Create contact in database with given_name, family_name, email, and address
    if params[:given_name].nil? || params[:given_name].empty? ||
      params[:family_name].nil? || params[:family_name].empty? ||
      params[:email].nil? || params[:email].empty? ||
      params[:address].nil? || params[:address].empty?
      # @results = "Please fill in all information."
      # cookies[:results] = @results
      render 'create.html.erb'
    else
      @contact = Contact.new
      @contact.given_name = params[:given_name]
      @contact.family_name = params[:family_name]
      @contact.email = params[:email]
      @contact.address = params[:address]
      @contact.save
      # @results = "Contact Created"
      # cookies[:results] = @results
      redirect_to '/'
    end
  end
end
