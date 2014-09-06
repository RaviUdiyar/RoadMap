
class PagesController < ApplicationController
  
	attr_accessor :coord1 , :coord
  respond_to do |format|
  	format.js 
  end
  def main
  	#@coord =(params [:value ])
  	@element = Nokogiri::HTML(open("app/views/pages/main.html.erb"))
  	@coord = @element.at('input')['value']
  	@coord1 = Geocoder.coordinates("#{@coord}")

  end
end
