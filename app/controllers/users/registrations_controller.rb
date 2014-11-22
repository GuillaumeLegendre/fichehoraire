class Users::RegistrationsController < Devise::RegistrationsController
  include ApplicationHelper

  def create
    flash[:info] = 'Registrations are not open yet, but please check back soon'
    redirect_to root_path
  end

  def new
    flash[:info] = 'Registrations are not open yet, but please check back soon'
    redirect_to root_path
  end

  def edit
    flash[:info] = 'Registrations are not open yet, but please check back soon'
    redirect_to root_path
  end
end
