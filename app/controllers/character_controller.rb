class CharacterController < ApplicationController
  def index
    response = HTTP.get("https://gateway.marvel.com:443/v1/public/characters/#{params[:character_id]}?apikey=Rails.application.credentials.api_key")
    render json: response.parse(:json)
  end
end