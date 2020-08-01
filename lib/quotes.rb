require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'telegram_bot.rb'

class Inspire
  attr_reader :joke, :inspiration

  def initialize
    @joke = request_joke
    @inspiration = request_inspiration
  end

  private

  def request_joke
    url = 'https://sv443.net/jokeapi/v2/joke/Programming,Any?format=xml&blacklistFlags=nsfw,sexist&type=single'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    response = JSON.parse(response)
    response
  end

  def request_inspiration
    url = 'http://www.quotesdaddy.com/api/'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    response = JSON.parse(response)
    response
  end
  
 end