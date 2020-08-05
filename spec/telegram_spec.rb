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

describe Inspire do
  describe '#request_joke' do
    it 'returns a joke from the API url' do
      joke = Inspire.new
      allow(joke).to receive(:request_joke).and_return('how are u')
      expect(joke.request_joke).to eq('how are u')
    end
  end
end

describe Inspire do
  describe '#request_joke' do
    it 'returns an inspiration from the API url' do
      inspiration = Inspire.new
      allow(inspiration).to receive(:request_inspiration).and_return('how are u')
      expect(inspiration.request_inspiration).to eq('how are u')
    end
  end
end
