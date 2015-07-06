class MypageController < ApplicationController
	before_action :set_mypage, only: [:show]
	before_action :authenticate_user!, only: [:show]
	def index
		@users = User.all
	end

	def show
	end

	private
		def set_mypage
			@user = User.find_by(id: current_user.id)
			@user_jobs = UserJob.where(id: current_user.id)
		end
end
