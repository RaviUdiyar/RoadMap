class PagesController < ApplicationController
 
  def main
    
  end

  def search
    @coord2 = params[:val]
    @coord1 = Geocoder.coordinates("#{@coord2}").to_json
    respond_to do |format|
      format.js 
    end   
  end
end
