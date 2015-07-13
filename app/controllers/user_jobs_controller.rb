class UserJobsController < ApplicationController
	before_action :set_user_job, only: [:show, :edit, :update]

	def index
		@user_jobs = UserJob.where(user_id: current_user.id)
	end

	def show
	end

	def edit
	end

	def new
		@job = Job.find_by(id: params[:id])
		@user_job = UserJob.new
	end

	def create
		@user_job = UserJob.new(userjob_params)

		respond_to do |format|
			if @user_job.save
				format.html { redirect_to @user_job, notice: 'Job was successfully created.' }
				format.json { render :show, status: :created, location: @user_job }
			else
				format.html { render :new }
				format.json { render json: @user_job.errors, status: :unprocessable_entity }
      	end
		end
	end

	def update
		respond_to do |format|
			if @user_job.update(userjob_params)
				format.html { redirect_to @user_job, notice: 'Job was successfully updated.' }
				format.json { render :show, status: :ok, location: @user_job }
			else
				format.html { render :edit }
				format.json { render json: @user_job.errors, status: :unprocessable_entity }
			end
		end
	end

	private
		def set_user_job
			@user = User.find_by(id: current_user.id)
			@user_job = UserJob.find_by(user_id: current_user.id, job_id: params[:id])
		end

		def userjob_params
			params.require(:user_job).permit(:user_id, :job_id, :user_comment)
		end
end
