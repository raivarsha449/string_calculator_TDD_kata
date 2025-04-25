class StringCalculatorTDD
    def add_numbers(numbers)
        return 0 if numbers.empty?
        if numbers.start_with?("//")
          delimiter, numbers = numbers.match(%r{//(.)\n(.*)})[1..2]
          nums = numbers.split(/#{Regexp.escape(delimiter)}/).map(&:to_i)
        else
          nums = numbers.split(/,|\n/).map(&:to_i)
        end
        negatives = nums.select { |n| n < 0 }
        raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?
        nums.sum
    end
end
  