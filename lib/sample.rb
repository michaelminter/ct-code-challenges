class Sample
  def initialize(hash)
    @hash = hash
  end
  # redirect all calls to the hash
  def method_missing(m, *args)
    @hash[m.to_s]
  end
end
