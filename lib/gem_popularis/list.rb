require "./lib/gem_popularis/gem_list_parser"

module GemPopularis

  class List

    def raw
      @raw ||= `gem list --remote --source=https://rubygems.org`
    end

    def gems
      @gems ||= GemListParser.new(raw).gems
    end

  end

end
