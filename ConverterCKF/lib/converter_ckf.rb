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

  def self.number_reader
    numbers = gets.chomp
    if numbers.to_f.to_i.to_s == numbers
      numbers.to_i
    else
      -1
    end
  end
end
