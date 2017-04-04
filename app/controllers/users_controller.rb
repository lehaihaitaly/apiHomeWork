class UsersController < ApplicationController
	def index
		url = 'https://randomapi.com/api/6de6abfedb24f889e0b5f675edc50deb?fmt=raw&sole'
response = RestClient.get(url)
@responses = JSON.parse(response)
return @responses
	end
end
