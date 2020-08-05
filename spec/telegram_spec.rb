require_relative '../lib/telegram_bot'
require_relative '../lib/quotes'

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
      allow(joke).to receive(:request_joke).and_return('Why do choirs keep buckets handy? So they can carry their tune')
      expect(joke.request_joke).to eq('Why do choirs keep buckets handy? So they can carry their tune')
    end
  end
end

describe Inspire do
  describe '#request_joke' do
    it 'returns an inspiration from the API url' do
      inspiration = Inspire.new
      allow(inspiration).to receive(:request_inspiration).and_return('An Apple a day keeps you busy anyway')
      expect(inspiration.request_inspiration).to eq('An Apple a day keeps you busy anyway')
    end
  end
end
