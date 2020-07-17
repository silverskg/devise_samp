class ApplicationController < ActionController::Base
  before_action :controller_permitted_parameters, if: :devise_controller?

  def controller_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
end
