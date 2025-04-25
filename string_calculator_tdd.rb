class StringCalculatorTDD
    def add_numbers(numbers)
      return 0 if numbers.empty?
      if numbers.start_with?("//")
        delimiter, numbers = numbers.match(%r{//(.)\n(.*)})[1..2]
        numbers.split(/#{Regexp.escape(delimiter)}/).map(&:to_i).sum
      else
        numbers.split(/,|\n/).map(&:to_i).sum
      end
    end
end
  