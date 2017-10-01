require 'spec_helper'

describe DecimalToBinary do
  [
      [2, '10'],
      [4, '100'],
      [8, '1000'],
      [47, '101111'],
      [0, '0'],
      [1, '1'],
      [r = rand(5_000_000_000_000), r.to_s(2)]
  ].each do |decimal, binary|
    it "converts #{decimal} to #{binary}" do
      decimal_to_binary = described_class.new(decimal)
      expect(decimal_to_binary.binary).to eq(binary)
    end
  end
end
