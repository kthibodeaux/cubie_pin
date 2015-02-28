require 'spec_helper'
include CubiePin

describe PinDetail do

  describe '.lookup' do
    it 'returns an array [ pin_id, { details } ]' do
      translations = { '1' => { :name => 'PG3', :expansion => 1, :physical => 8 } }
      allow(PinDetail).to receive(:translations).and_return(translations)

      expect(PinDetail.lookup(1)).to eq([1, translations['1']])
    end
  end

  describe '.find_by_name' do
    it 'returns the lookup for a given name' do
      translations = { '1' => { :name => 'PG3', :expansion => 1, :physical => 8 } }
      allow(PinDetail).to receive(:translations).and_return(translations)
      allow(PinDetail).to receive(:lookup)

      PinDetail.find_by_name('PG3')

      expect(PinDetail).to have_received(:lookup)
    end
  end

  describe '.find_by_physical' do
    it 'returns the lookup for a given expansion and physical pin' do
      translations = { '1' => { :name => 'PG3', :expansion => 1, :physical => 8 } }
      allow(PinDetail).to receive(:translations).and_return(translations)
      allow(PinDetail).to receive(:lookup)

      PinDetail.find_by_physical(1, 8)

      expect(PinDetail).to have_received(:lookup)
    end
  end

  describe '.translations' do
    it 'is a hash containing details for 67 keys' do
      expect(PinDetail.translations).to be_an_instance_of(Hash)
      expect(PinDetail.translations.size).to eq(67)
    end

    it 'has no duplicate keys' do
      unique_keys = PinDetail.translations.keys.uniq
      keys = PinDetail.translations.keys

      expect(unique_keys).to eq(keys)
    end

    it 'has no duplicate names' do
      unique_names = PinDetail.translations.map { |key, value| value[:name] }.uniq
      names = PinDetail.translations.map { |key, value| value[:name] }

      expect(unique_names).to eq(names)
    end

    it 'has no duplicate expansion/physical combinations' do
      unique_physicals = PinDetail.translations.map { |key, value| [ value[:expansion], value[:physical] ] }.uniq
      physicals = PinDetail.translations.map { |key, value| [ value[:expansion], value[:physical] ] }

      expect(unique_physicals).to eq(physicals)
    end
  end

end
