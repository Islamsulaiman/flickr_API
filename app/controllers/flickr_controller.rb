class FlickrController < ApplicationController
  def index
    sanity_check
    @photos = FlickrService.new(params[:flickr_user_id]).get_photos_for_user
  rescue ArgumentError => e
    logger.error "Error: #{e.message}"
    flash.alert = e.message
  rescue => e
    logger.error "Error fetching photos: #{e.message}"
    flash.alert = "Unexpected error occurred. Please try again."
  end

  private

  def sanity_check
    # byebug
    raise ArgumentError, "Flickr user ID is missing or empty" if params[:flickr_user_id].blank?
  end
end
