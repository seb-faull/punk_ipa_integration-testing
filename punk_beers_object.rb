require 'httparty'
require 'json'

class PunkIpaBeersService
  include HTTParty
  attr_accessor :uri

  base_uri 'https://api.punkapi.com/v2/'

  def initialize
    @uri = ""
  end

  def single_beer_call(id)
    single_beer_call = JSON.parse(self.class.get("/beers/#{id}").body)
    single_beer_call[0]
  end

  def random_beer_call
    random_beer_call = JSON.parse(self.class.get("/beers/random").body)
    random_beer_call[0]
  end

  def beers(optional_query_hash = {})
    if optional_query_hash.empty? == false
      num_keys = 0
      @uri << "?"
      optional_query_hash.each do |k, v|
        @uri << "#{k}=#{v}"
        while num_keys < optional_query_hash.keys.length - 1
          @uri << "&"
          num_keys += 1
        end
        query_resp = JSON.parse(self.class.get("/beers#{@uri}").body)
        query_resp[0]
      end
    else
      response = JSON.parse(self.class.get('/beers').body)
      response[0]
    end

  end

end

beer = PunkIpaBeersService.new

beer.beers({"yeast" => "american", "abv_gt" => 4})
p beer.uri

# single_beer = PunkIpaBeersService.new
# puts single_beer.single_beer_call('1').class

# random_beer = PunkIpaBeersService.new
# puts random_beer.random_beer_call

# all_beers = PunkIpaBeersService.new
# puts all_beers.all_beers_call
