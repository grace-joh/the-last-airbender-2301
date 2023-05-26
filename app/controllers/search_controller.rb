class SearchController < ApplicationController
  def index
    response = Faraday.get("https://last-airbender-api.fly.dev/api/v1/characters?affiliation=#{search_params[:nation]}&perPage=500")
    json = JSON.parse(response.body, symbolize_names: true)
    # binding.pry
    @members = json.map do |member|
      Member.new(member)
    end
  end

  private

  def search_params
    params.permit(:nation)
  end
end
