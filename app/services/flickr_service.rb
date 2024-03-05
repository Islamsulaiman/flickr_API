require 'flickr'
class FlickrService

  def initialize(attribute)
    @user_id_params = attribute
  end

  def get_photos_for_user
    flickr = Flickr.new  #for this line to work, the FLICKR_API_KEY and FLICKR_SHARED_SECRET should be in the environment (figaro), or place them explicitly.
    photos_json = flickr.people.getPublicPhotos(user_id: @user_id_params)
    process_links(photos_json)
  end

  private

  def process_links(photos_json) #Here we construct the url link for each of the photos
    photos = photos_json.map {|photo| "https://live.staticflickr.com/#{photo["server"]}/#{photo["id"]}_#{photo["secret"]}.jpg"}
  end
end