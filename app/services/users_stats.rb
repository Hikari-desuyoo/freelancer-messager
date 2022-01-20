class UsersStats
  def self.request
    response = Faraday.get(ApiPaths.hiring_path('/api/v1/users_stats'))
    JSON.parse(response.body, simbolize_names: true)
  end
end