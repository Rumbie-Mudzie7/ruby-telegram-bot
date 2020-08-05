require "calculator"

describe Calculator do
    let(:calc) { Calculator.new }

    describe "#add" do
       it "adds numbers" do
           expect(calc.add(1,2)).to eq(3)
       end

    end
end