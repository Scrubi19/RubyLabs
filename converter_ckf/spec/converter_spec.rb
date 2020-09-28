# frozen_string_literal: true

require_relative '../lib/converter_ckf'
require 'rspec'

RSpec.describe ConverterCKF do
  describe '.converter' do
    context 'From C to F' do
      it { expect(ConverterCKF.convert(10, 'C', 'F')).to eq 50 }
    end

    context 'From C to K' do
      it { expect(ConverterCKF.convert(10, 'C', 'K')).to eq 283 }
    end

    context 'From F to C' do
      it { expect(ConverterCKF.convert(10, 'F', 'C')).to eq(-13) }
    end

    context 'From F to K' do
      it { expect(ConverterCKF.convert(10, 'F', 'K')).to eq 265 }
    end

    context 'From K to C' do
      it { expect(ConverterCKF.convert(10, 'K', 'C')).to eq(-263) }
    end

    context 'From K to F' do
      it { expect(ConverterCKF.convert(210, 'K', 'F')).to eq(-81) }
    end
  end
end
