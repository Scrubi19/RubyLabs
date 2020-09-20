# frozen_string_literal: true

# class to convert C, F, K in degrees
class ConverterCKF
  def self.convert(value, from, to)
    case
    when from == 'C' && to == 'F' then (value * 9 / 5) + 32

    when from == 'C' && to == 'K' then value + 273

    when from == 'F' && to == 'C' then (value - 32) * 5 / 9

    when from == 'F' && to == 'K' then value + 459 * 5 / 9

    when from == 'K' && to == 'C' then value - 273

    when from == 'K' && to == 'F' then (value * 9 / 5) - 459

    else puts 'incorrect data'
    end
  end
end

puts 'Enter value for degrees'
value = gets.chomp.to_i
puts 'Enter from what to convert(C, F, K)'
from = gets.chomp
puts 'Enter where to convert(C, F, K)'
to = gets.chomp

puts 'Result', ConverterCKF.convert(value, from, to)
