require_relative '../lib/telegram_bot.rb'
require_relative '../lib/quotes.rb' 

RSpec.describe do
    it 'should inherit behavior from Parent' do
      expect(Bot < Inspire).to eq true
    end

    it 'is not inherited' do
        expect(Bot < Inspire).!= eq true
    end
end




