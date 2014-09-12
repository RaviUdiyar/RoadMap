
class PagesController < ApplicationController
 

  def main
     @coord2 = params[:val] 
     Gon.global.coord = @coord2 
     #Gon.watch.coord3 = @coord2
     #puts gon.coord3
      puts gon.global.coord
     @coord1 = Geocoder.coordinates("#{@coord2}")
     Gon.global.coordLatLong = @coord1
     puts gon.global.coordLatLong
     render 'main'
  end

  def search
     
  end
end
