require '../lib/csv_work'
require 'rspec'

RSpec.describe CSVcalc do
  data = CSVcalc.new('spec/test.csv')
  it 'Search min' do
    expect(data.csv_min[0]).to eq 'Крымский федеральный округ'
  end

  it 'Search max' do
    expect(data.csv_max[0]).to eq 'Амурская область'
  end

  it 'Calculate mean' do
    expect(data.csv_calculate_mean).to eq 57.0
  end

  it 'Calculate correct sample variance' do
    expect(data.csv_correct_sample_variance).to eq 1545.8333333333333
  end
end
