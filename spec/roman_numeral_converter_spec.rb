require 'spec_helper'
require './src/roman_numeral_converter'

describe RomanNumeralConverter do 
  def as_roman(number)
    subject.convert(number)
  end
  it {expect(as_roman(1)).to eq 'I' }
  it {expect(as_roman(2)).to eq 'II' }
  it {expect(as_roman(5)).to eq 'V' }
  it {expect(as_roman(6)).to eq 'VI' }
  it {expect(as_roman(9)).to eq 'IX' }
  it {expect(as_roman(10)).to eq 'X' }
  it {expect(as_roman(20)).to eq 'XX' }
  it {expect(as_roman(40)).to eq 'XL' }
  it {expect(as_roman(50)).to eq 'L' }
  it {expect(as_roman(90)).to eq 'XC' }
  it {expect(as_roman(100)).to eq 'C' }
  it {expect(as_roman(400)).to eq 'CD' }
  it {expect(as_roman(500)).to eq 'D' }
  it {expect(as_roman(900)).to eq 'CM' }
  it {expect(as_roman(1000)).to eq 'M' }

  context 'with  an invalid argument' do
    it { expect {as_roman(0)}.to raise_error ArgumentError  }
  end


end
