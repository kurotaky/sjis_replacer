require 'spec_helper'

describe SJISReplacer do
  it 'has a version number' do
    expect(SJISReplacer::VERSION).to eq '0.1.0'
  end

  describe '#replace' do
    it 'replace non sjis safe characters' do
      expect(SJISReplacer.replace('①')).to eq('1')
    end
  end
end
