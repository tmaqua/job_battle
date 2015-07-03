class User < ActiveRecord::Base
	has_many :user_jobs
	has_many :jobs, through: :user_jobs


	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
			 :recoverable, :rememberable, :trackable, :validatable
	validates :username, presence: true, uniqueness: true
end
