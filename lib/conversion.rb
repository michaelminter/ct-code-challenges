class Conversion
  def self.string_to_hash(string)
    # remove unmatched bracket
    new_str = string.sub(/]}/,'}')
    # wrap time and variable names in quotation marks
    new_str.gsub!(/(\d{2}:\d{2}[AP]M|[a-z]+_?\d*)/, '"\1"')
    # convert `:` to hash rockets
    new_str.gsub!(/:(?!\d{2}[AP]M)/,'=>')

    eval(new_str)
  end

  def self.hash_to_json(hash)
    hash.to_json
  end
end
