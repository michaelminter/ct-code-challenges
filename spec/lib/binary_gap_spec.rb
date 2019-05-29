require 'rails_helper'

RSpec.describe BinaryGap do
  describe '.solution' do
    it { expect(BinaryGap.solution(9)).to eql(2) }
    it { expect(BinaryGap.solution(529)).to eql(4) }
    it { expect(BinaryGap.solution(20)).to eql(1) }
    it { expect(BinaryGap.solution(15)).to eql(0) }
    it { expect(BinaryGap.solution(1_041)).to eql(5) }
    it { expect(BinaryGap.solution(1_610_612_737)).to eql(28) }
  end
end
