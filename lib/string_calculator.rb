class StringCalculator
  def initialize
    @call_count = 0
  end

  def add(numbers)
    @call_count += 1
    return 0 if numbers.empty?

    delimiter = /,|\n/
    if numbers.start_with?("//")
      delimiter, numbers = numbers.split("\n", 2)
      delimiter = Regexp.escape(delimiter[2..-1].chop)
    end

    num_array = numbers.split(Regexp.new(delimiter)).map(&:to_i).reject { |num| num > 1000 }
    negatives = num_array.select { |num| num < 0 }
    raise "negatives not allowed: #{negatives.join(', ')}" unless negatives.empty?

    num_array.reduce(:+)
  end

  def get_called_count
    @call_count
  end

end