class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
  end


  def sign_in
    default_params.permit(:username, :email)
  end

  private

    def after_sign_out_path_for(resource_or_score)
      root_path
      #"static_pages#home"
    end

end