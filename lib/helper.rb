require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'telegram_bot.rb'

class Inspire
  @values = nil

  def initialize
    @values = make_the_request
  end

  def make_the_request
    url = 'https://sv443.net/jokeapi/v2/joke/Programming,Any?format=xml&blacklistFlags=nsfw,sexist&type=single'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    response = JSON.parse(response)
    response
  end

  def select_random
    @values = @values.sample
    @values
  end
end