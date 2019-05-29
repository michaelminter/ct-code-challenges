class BinaryGap
  def self.solution(n)
    n.to_s(2).scan(/(?<=1)0+(?=1)/).map(&:length).max || 0
  end
end
