require 'rails_helper'

describe Sample do
  it 'should redirect method calls to hash' do
    h = {"this" => [1, 2, 3, 4, 5, 6], "that" => ['here', 'there', 'everywhere'], "other" => 'here'}

    c = Sample.new(h)
    expect(c.this).to eq([1, 2, 3, 4, 5, 6])
    expect(c.that).to eq(['here', 'there', 'everywhere'])
    expect(c.other).to eq('here')
  end

end
