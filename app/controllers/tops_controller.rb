class TopsController < ApplicationController
  require 'instagram'
  # require 'uri'
  require 'json'

  def index

    Instagram.configure do |config|
      config.client_id = "#{Constants::CLIENT_ID}"
      config.client_secret = "#{Constants::CLIENT_SECRET}"
      config.access_token = "#{Constants::ACCESS_TOKEN}"
    end
    if(params['q'])
      @medias = Instagram.tag_recent_media(params['q'])
    else
      @medias = nil
    end
      #@medias = Instagram.user_recent_media


  end
end
