class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultSetTitle




end
=begin
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

# before relocation to DeviseWhitelist module
=end

=begin
  def current_user #overriding devise method
   #super ->don't change anything i simply want the same behaviour as method i am overriding
      super || OpenStruct.new(name: "Guest User", first_name: "Guest", last_name: "User", email: "guest@example.com")
  end
=end
