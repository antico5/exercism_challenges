class Raindrops

  PRIME_OUTPUT = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}

  def self.convert number
    raindrops = ""
    PRIME_OUTPUT.each do |key, value|
      if is_factor? number, key
        @raindrops += value
      end
    end
    raindrops.empty? ? number.to_s : @raindrops
  end

  def self.convert number
    result = PRIME_OUTPUT.map do |prime, word|
      is_factor?(number,prime) ? word : ""
    end.join
    result.empty? ? number.to_s : result
  end

  def self.is_factor? number, factor
    number % factor == 0
  end

end
