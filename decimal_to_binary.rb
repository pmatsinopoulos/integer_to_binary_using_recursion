class DecimalToBinary
  def initialize(decimal)
    @decimal = decimal
  end

  def binary
    return decimal.to_s if decimal <= 1

    "#{DecimalToBinary.new(decimal / 2).binary}#{decimal % 2}"
  end

  private

  attr_reader :decimal
end
