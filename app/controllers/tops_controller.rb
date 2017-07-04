class TopsController < ApplicationController
  require 'instagram'
  # require 'uri'
  require 'json'

  def index
    if(params['q'])
      @medias = Instagram.tag_recent_media(params['q'])
    else
      @medias = nil
    end

    Instagram.configure do |config|
      config.client_id = "#{Constants::CLIENT_ID}"
      config.client_secret = "#{Constants::CLIENT_SECRET}"
      config.access_token = "#{Constants::ACCESS_TOKEN}"
    end


  end
end
