class FlickrController < ApplicationController
  def index
    begin #Necessary in case the user is not found
      @photos = FlickrService.new(params[:flickr_user_id]).get_photos_for_user unless params[:flickr_user_id].nil?
    rescue => e
      flash.alert = "User Not Found... Sorry. Check and try again"
    end
  end
end
