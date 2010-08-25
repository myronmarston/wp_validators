require 'spec_helper'

describe WpValidators do
  describe '.is_valid_url?' do
    def be_valid_url
      simple_matcher("a valid url") do |str|
        WpValidators.is_valid_url?(str)
      end
    end

    it 'returns true for a valid http URL' do
      'http://example.com/'.should be_valid_url
    end

    it 'returns true for a valid https URL' do
      'https://example.com/'.should be_valid_url
    end

    it 'returns false for a string that is not a URL' do
      'some string'.should_not be_valid_url
    end

    it 'returns false for an ftp URL' do
      'ftp://example.com/'.should_not be_valid_url
    end
  end
end

