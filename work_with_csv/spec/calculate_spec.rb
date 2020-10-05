# frozen_string_literal: true

require 'rspec'
require_relative '../lib/csv_work'

RSpec.describe CSVcalc do
  describe '.csv calculate' do
    let(:data) { CSVcalc.new('spec/test.csv') }
    context 'Search min' do
      it { expect(data.csv_min(2)).to eq 12.0 }
    end

    context 'Search max' do
      it { expect(data.csv_max(2)).to eq 120.0 }
    end

    context 'Calculate mean' do
      it { expect(data.csv_mean(2)).to eq 57.0 }
    end

    context 'Calculate correct sample variance' do
      it { expect(data.sample_variance(2)).to eq 5336.333333333333 }
    end
  end
end
