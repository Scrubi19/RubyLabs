# frozen_string_literal: true

require 'rspec'
require_relative '../lib/converter_ckf'

describe 'ConverterCKF' do
    it 'From C to F' do
        expect(ConverterCKF.convert(10,'C','F')).to eq 50
    end

	it 'From C to K' do
		expect(ConverterCKF.convert(10,'C','K')).to eq 283
	end

	it 'From F to C' do
		expect(ConverterCKF.convert(10,'F','C')).to eq -13
	end

	it 'From F to K' do
		expect(ConverterCKF.convert(10,'F','K')).to eq 265
	end

	it 'From K to C' do
		expect(ConverterCKF.convert(10,'K','C')).to eq -263
	end

	it 'From K to F' do
		expect(ConverterCKF.convert(210,'K','F')).to eq -81
	end

end
