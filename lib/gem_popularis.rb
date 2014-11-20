require "dotenv"
Dotenv.load

require "gems"

require_relative "gem_popularis/list"

module GemPopularis

  def self.rubygems_api_key
    @rubygems_api_key ||= ENV["RUBYGEMS_API_KEY"]
  end

  def self.client
    @client ||= Gems::Client.new(:key => rubygems_api_key)
  end

end
