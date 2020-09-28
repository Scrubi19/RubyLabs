# frozen_string_literal: true

require 'rspec'
require_relative '../lib/csv_work'

RSpec.describe CSVcalc do
  describe '.csv calculate' do
    let(:data) { CSVcalc.new('spec/test.csv') }
    context 'Search min' do
      it { expect(data.csv_min[0]).to eq 'Крымский федеральный округ' }
    end

    context 'Search max' do
      it { expect(data.csv_max[0]).to eq 'Амурская область' }
    end

    context 'Calculate mean' do
      it { expect(data.csv_calculate_mean).to eq 57.0 }
    end

    context 'Calculate correct sample variance' do
      it { expect(data.csv_correct_sample_variance).to eq 5336.333333333333 }
    end
  end
end
