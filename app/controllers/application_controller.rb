class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  helper_method :show_menu?
   def show_menu?
     true
   end
end
