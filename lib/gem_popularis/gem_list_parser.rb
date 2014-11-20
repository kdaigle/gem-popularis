require "./lib/gem_popularis/gem_parser"

module GemPopularis

  class GemListParser

    def initialize(raw_output)
      @raw_output = raw_output
    end

    # Public: Given the raw_output, parse the gem names and versions.
    #
    # Returns a Hash of format {gem_name => gem_version}
    def gems
      @gems ||= @raw_output.split("\n").inject({}) do |result, string|
        if response_boilerplate?(string)
          result
        else
          parser = GemParser.new(string)
          result.merge!(parser.name => parser.version)
        end
      end
    end

    private

    def response_boilerplate?(string)
      ["", "*** REMOTE GEMS ***"].include?(string)
    end

  end

end
