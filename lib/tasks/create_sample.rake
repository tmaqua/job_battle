# encoding: utf-8
require 'net/http'

namespace :create_sample do
	# $ rake create_sample:create_evaluated_movie
	desc "仕事サンプルの作成"
	task :create_job => :environment do
		puts "create_sample_job"
		Job.destroy_all
		30.times do |n|
			Job.create(name: "job_#{n}", payment: (n+1)*100)
		end
		puts "success"
	end
end