# frozen_string_literal: true

require_relative 'converter_ckf'

class Main
  def self.number_reader
    numbers = gets.chomp
    if numbers.to_f.to_i.to_s == numbers
      numbers.to_i
    else
      -1
    end
  end

  def self.start
    puts 'Enter value for degrees'
    value = number_reader
    if value == -1
      puts 'incorrect value'
    else
      puts 'Enter from what to convert(C, F, K)'
      from = gets.chomp
      puts 'Enter where to convert(C, F, K)'
      to = gets.chomp
      puts 'Result', ConverterCKF.convert(value, from, to)
    end
  end
end

Main.start
