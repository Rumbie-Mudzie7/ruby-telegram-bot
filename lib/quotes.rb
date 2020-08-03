require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'telegram_bot.rb'

class Inspire
  attr_reader :request_joke, :request_inspiration

  def initialize; end

  def self.request_joke
    url = 'https://type.fit/api/quotes'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    # response = JSON.parse(response)
    response
  end

  def self.request_inspiration
    url = URI("https://quotes21.p.rapidapi.com/quote")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    
    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-host"] = 'quotes21.p.rapidapi.com'
    request["x-rapidapi-key"] = '67416fcf58msh36e276c4c095524p14066bjsn6807f4ad4811'
    
    response = http.request(request)
    response = JSON.parse(response)
    response[quote]
  end

  # def select_random

  # end

end