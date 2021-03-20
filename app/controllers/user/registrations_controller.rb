class User::RegistrationsController < Devise::RegistrationsController
  before_action :configure_premitted_parameters, if: :devise_controller?
  
  protected
  
  def configure_premitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_nam])
  end
end