module GemPopularis

  class List

    def raw
      @raw ||= `gem list --remote --source=https://rubygems.org`
    end

    def gem_names
      @gem_names ||= raw.split("\n")
    end

  end

end
