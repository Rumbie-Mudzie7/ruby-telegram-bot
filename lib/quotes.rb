require 'telegram/bot'
require_relative '../lib/telegram_bot.rb'
require 'net/http'
require 'json'
require 'dotenv'

class Inspire
  def initialize
    @joke = joke
    @inspiration = inspiration
  end

  def request_joke
    url = URI('https://joke3.p.rapidapi.com/v1/joke')

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request['x-rapidapi-host'] = 'joke3.p.rapidapi.com'
    env = Dotenv.load
    @key1 = env['API_KEY1']
    request['x-rapidapi-key'] = @key1

    response = http.request(request)
    response = JSON.parse(response.read_body)
    response['content']
  end

  def request_inspiration
    url = URI('https://quotes21.p.rapidapi.com/quote')

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request['x-rapidapi-host'] = 'quotes21.p.rapidapi.com'
    env = Dotenv.load
    @key1 = env['API_KEY1']
    request['x-rapidapi-key'] = @key1

    response = http.request(request)
    response = JSON.parse(response.read_body)
    response['quote']
  end
end
