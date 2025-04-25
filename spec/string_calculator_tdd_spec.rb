require_relative '../string_calculator_tdd'

RSpec.describe StringCalculatorTDD do
  it "returns 0 for an empty string" do
    calc = StringCalculatorTDD.new
    expect(calc.add_numbers("")).to eq(0)
  end
end
