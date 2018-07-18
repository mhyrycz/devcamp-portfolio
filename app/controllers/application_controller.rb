class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include DeviseWhitelist

  before_action :set_source

  def set_source #it will work for every child controller
    session[:source] = params[:q] if params[:q]
  end
end
=begin
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

# before relocation to DeviseWhitelist module
=end
