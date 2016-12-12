class Recipe
  include HTTParty

  key_value=ENV['FOOD2FORK_KEY'] || 'b8d79fc068d3c8127c0367e7b75cf0a8'
  hostport=ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com:80'
  base_uri "http://#{hostport}/api"

  default_params key: key_value
  format :json

  def self.for term
    get("/search", query: { q: term})["recipes"]
  end
end
