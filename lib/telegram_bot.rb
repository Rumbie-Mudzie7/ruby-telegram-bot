require 'telegram/bot'
require_relative '../lib/quotes.rb'
require 'dotenv'
Dotenv.load('./.env')

class Bot < Inspire
  def initialize
    token = ENV['TOKEN'] 
  

  Telegram::Bot::Client.run(token) do |bot|
    bot.listen do |message|
      case message.text
      when '/start'

        bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name} , welcome to the inspirational chat bot created by rumbidzayi mudziviri, the chat bot is to keep you inspired and entertained. Use  /start to start the bot,  /stop to end the bot, /motivate to get a inspirational quote everytime you request for it or /joke to get a joke everytime you request for it")

      when '/stop'

        bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}", date: message.date)
      when '/inspire'
        values = Inspire.new
        value = values.select_random
        bot.api.send_message(chat_id: message.chat.id, text: "#{value['text']}", date: message.date)
      else bot.api.send_message(chat_id: message.chat.id, text: "Invalid entry, #{message.from.first_name}, you need to use  /start,  /stop , /inspire or /joke")
      end
    end
  end
  end
end