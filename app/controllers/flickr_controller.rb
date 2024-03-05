class FlickrController < ApplicationController
  def index 
    if params[:flickr_user_id].present?
      # Fetch photos from Flickr based on the provided user ID
      # This is a placeholder logic; you'll need to replace it with actual Flickr API call
        @photos = FlickrService.get_photos_for_user(params[:flickr_user_id])
    end
  end
end
