require 'rubygems'
require 'httparty'

class DreamHost
	include HTTParty
	#Format: xml, json, perl, php, yaml, html, tab
	format = "json"
	api_key = "YOUR-API-KEY-HERE"
	base_uri 'https://api.dreamhost.com/?key=' + api_key
	

	def self.get_all_users
		get("&cmd=user-list_users&format=#{format}")
	end
	
	def self.get_mail_users
		file = File.open(get("&cmd=user-list_users&format=#{format}"))
		#TODO - GET ONLY MAIL USERS
	end
	
end
