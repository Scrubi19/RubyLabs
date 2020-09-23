# frozen_string_literal: true

require_relative 'converter_ckf'

def main
  puts 'Enter value for degrees'
  value = ConverterCKF.number_reader
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

main
