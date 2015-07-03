class WelcomeController < ApplicationController
	require 'net/http'
	def index
		# url = URI.parse("https://app.rakuten.co.jp/services/api/IchibaItem/Search/20140222?f")
		# parameters = {
		# 	# 必須パラメータ
		# 	:format => "json",
		# 	:applicationId => "1053904573776057358",

		# 	# ジャンルID
		# 	:genreId => 101360
		# }

		# # パラメータをエンコード
		# url.query = URI.encode_www_form(parameters)
		# res = Net::HTTP.get_response(url)
		# result_api = JSON.parse(res.body, symbolize_names: true)
	end
end
