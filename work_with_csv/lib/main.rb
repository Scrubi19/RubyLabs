# frozen_string_literal: true

require_relative 'csv_work'

class Main
  def self.init_file
    puts 'Enter file name (.csv):'
    filepath = gets.chomp
    CSVcalc.new(filepath)
  end

  def self.ch_cols(data, cols)
    count = 1
    (1..cols).each do |i|
      puts "#{count}"'. '"#{(data[0][i])}"
      count += 1
    end
    gets.chomp.to_i
  end

  def self.start
    csv_data = init_file
    puts 'Enter cols for calculate'
    col = ch_cols(csv_data.data, csv_data.cols)
    puts 'min = '"#{csv_data.csv_min(col)}"
    puts 'max = '"#{csv_data.csv_max(col)}"
    puts 'mean = '"#{csv_data.csv_mean(col)}"
    puts 'simple_variance = '"#{csv_data.sample_variance(col)}"
  end
end

Main.start
