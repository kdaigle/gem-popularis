module GemPopularis

  class GemParser

    def initialize(raw_string)
      @raw_string = raw_string
    end

    def name
      @name ||= match_data[1]
    end

    def version
      @version ||= match_data[2]
    end

    private

    def match_data
      @raw_string.match(/^(.*)\s\((.*)\)$/)
    end

  end

end
