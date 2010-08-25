require 'uri'

module WpValidators
  def self.is_valid_url?(string)
    uri = begin
      URI::parse(string)
    rescue URI::InvalidURIError, URI::BadURIError
      return false
    end

    %w[http https].include?(uri.scheme)
  end
end
