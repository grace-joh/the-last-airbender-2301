class AvatarService
  def search_by_nation(nation)
    get_url("/api/v1/characters?affiliation=#{nation}&perPage=500")
  end

  private

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://last-airbender-api.fly.dev')
  end
end
