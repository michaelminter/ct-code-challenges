require 'rails_helper'

describe Conversion do
  describe '#string_to_hash' do
    it 'converts string to hash' do
      string = "{key:[[value_1, value_2],[value_3, value4]], 5:10:00AM]}"
      hash = Conversion.string_to_hash(string)
      expect(hash).to eq({"key" => [["value_1", "value_2"],["value_3", "value4"]], 5=>"10:00AM"})
    end
  end

  describe '#hash_to_json' do
    it 'converts hash to json' do
      string = "{key:[[value_1, value_2],[value_3, value4]], 5:10:00AM]}"
      hash = Conversion.string_to_hash(string)
      json = Conversion.hash_to_json(hash)
      expect(json).to eq('{"key":[["value_1","value_2"],["value_3","value4"]],"5":"10:00AM"}')
    end
  end
end
