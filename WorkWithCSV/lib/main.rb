# frozen_string_literal: true

require_relative 'csv_work'

class Main
  def self.init_file
    puts 'Enter file name:'
    filepath = gets.chomp
    CSVcalc.new(filepath)
  end

  def self.start
    csv_data = init_file
    puts '1. Min'
    puts '2. Max'
    puts '3. Mean'
    puts '4. Corrected sample variance'
    choice = gets.chomp.to_i
    case choice
    when 1
      puts csv_data.csv_min
    when 2
      puts csv_data.csv_max
    when 3
      puts csv_data.csv_calculate_mean
    when 4
      puts csv_data.csv_correct_sample_variance
    end
  end
end

Main.start
