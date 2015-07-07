class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

		def configure_permitted_parameters
			devise_parameter_sanitizer.for(:sign_in) << :email
			devise_parameter_sanitizer.for(:sign_up) << :email
			devise_parameter_sanitizer.for(:account_update) << :email
		end

	# ログアウト後に飛ばすURL
	def after_sign_out_path_for resource
		root_path
		# jobs_path
	end 

	# ログイン後に飛ばすURL　mypageに飛ばす
	def after_sign_in_path_for(resource) 
		# mypage_path
		mypage_url(resource)
	end
end
