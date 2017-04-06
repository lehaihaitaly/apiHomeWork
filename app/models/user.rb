class User < ApplicationRecord
	validates :email, :presence => true, :uniqueness => true

	def self.populate
	url = 'https://randomapi.com/api/6de6abfedb24f889e0b5f675edc50deb?fmt=raw&sole'
response = RestClient.get(url)
responses = JSON.parse(response)
responses.each do |res|
User.create!(:first => res['first'], :last => res['last'], :email => res['email'], :address => res['address'], :created => res['created'], :balance => res['balance'])
end
end
end
