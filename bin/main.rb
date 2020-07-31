require_relative '../lib/telegram_bot.rb'
require_relative '../lib/helper.rb' 
require 'dotenv' 
Dotenv.load('./.env') 
Bot.new