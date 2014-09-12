class GetCoordinates < ActiveRecord::base

	def self.search(search)
		gecoded_by :search , :latitude => :lat, :longitude => :lon 
		after_validation :geocode
		

		#reverse_geocoded_by :latitude, :longitude, :address => :full_address
		#after_validation :reverse_gecode
		#return address.geocoded
	end

end