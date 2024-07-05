require "string_calculator"

describe StringCalculator do

  before do
    @calculator = StringCalculator.new
  end

  it 'returns 0 for an empty string' do
    expect(@calculator.add('')).to eq(0)
  end

end