class FlickrController < ApplicationController
  def index
    call_flickr_service if eligible
  rescue ArgumentError => e
    logger.error "Error: #{e.message}"
    flash.alert = e.message
  end

  private

  def call_flickr_service
    sanity_check
    @photos = FlickrService.new(params[:flickr_user_id]).get_photos_for_user
  end

  def eligible
    true unless params[:form_submitted].blank?
  end

  def sanity_check
    raise ArgumentError, "Flickr user ID is missing or empty" if params[:flickr_user_id].blank?
  end
end
