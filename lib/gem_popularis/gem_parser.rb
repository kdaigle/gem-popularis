module GemPopularis

  class GemParser

    # Public: Given a line from our gem listing, parse the details from that line for use within
    # our application.
    #
    # raw_string - A single line String returned from the `gem` tool
    #
    # Returns an instance of GemParser.
    def initialize(raw_string)
      @raw_string = raw_string
    end

    # Public: Returns the name of the gem.
    #
    # Returns String name of gem or nil.
    def name
      @name ||= match_data[1]
    end

    # Public: Returns the version of the gem.
    #
    # Returns String version of gem or nil.
    def version
      @version ||= match_data[2]
    end

    private

    # Internal: Use a regular expression to match multiple pieces of information from the given
    # gem string.
    #
    # Returns instance of MatchData.
    def match_data
      @raw_string.match(/^(.*)\s\((.*)\)$/)
    end

  end

end
