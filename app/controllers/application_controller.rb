class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		added_attrs = [:first_name, :last_name, :age, :mobile_no, :email, :password, :password_cofirmation, :remember_me]
		devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
		devise_parameter_sanitizer.permit :sign_in, keys: [:login, :password]
		devise_parameter_sanitizer.permit :account_update, keys: added_attrs
	end

	include ApplicationHelper

end
