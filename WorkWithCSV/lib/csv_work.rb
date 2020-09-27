# frozen_string_literal: true

require 'csv'

class CSVcalc
  def initialize(path)
    @file = path
    @data = CSV.read(path)
    @cols = @data[0].length - 1
    @rows = @data.length - 1
    @mean = 0.0
  end

  def csv_max
    max = 0.0
    result_string = ''
    (1..@rows).each do |i|
      if max < @data[i][2].to_f
        max = @data[i][2].to_f
        result_string = @data[i]
      end
    end
    result_string
  end

  def csv_min
    min = @data[2][2].to_f
    result_string = ''
    (1..@rows).each do |i|
      if min > @data[i][2].to_f
        min = @data[i][2].to_f
        result_string = @data[i]
      end
    end
    result_string
  end

  def csv_calculate_mean
    max = 0.0
    (1..@rows).each do |i|
      max += @data[i][2].to_f
    end
    @mean = max / @rows
  end

  def csv_correct_sample_variance
    sum = 0.0
    (1..@rows).each do |i|
      sum += (@data[i][2].to_f - @mean)**2.to_f
    end
    average = sum / @rows
    (average * (@rows + 1)) / @rows
  end
end
