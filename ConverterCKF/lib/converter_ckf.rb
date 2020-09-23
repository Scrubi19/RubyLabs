# frozen_string_literal: true

# class to convert C, F, K in degrees
class ConverterCKF
  def self.convert(value, from, to)
    if from == 'C' && to == 'F' then (value * 9 / 5) + 32

    elsif from == 'C' && to == 'K' then value + 273

    elsif from == 'F' && to == 'C' then (value - 32) * 5 / 9

    elsif from == 'F' && to == 'K' then value + 459 * 5 / 9

    elsif from == 'K' && to == 'C' then value - 273

    elsif from == 'K' && to == 'F' then (value * 9 / 5) - 459

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
