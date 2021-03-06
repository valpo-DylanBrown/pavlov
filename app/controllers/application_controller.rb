class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :show_menu?
   def show_menu?
     true
   end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :admin])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :admin])
      devise_parameter_sanitizer.permit(:accept_invitation, keys: [:first_name, :last_name, :admin])
    end
end
