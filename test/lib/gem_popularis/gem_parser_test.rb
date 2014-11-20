require "./test/test_helper"
require "./lib/gem_popularis/gem_parser"

class GemParserTest < Minitest::Test

  def test_parse_gem_name
    parser = GemPopularis::GemParser.new("test-gem (0.0.1)")
    assert_equal "test-gem", parser.name
  end

  def test_parse_gem_version
    parser = GemPopularis::GemParser.new("test-gem (0.0.1)")
    assert_equal "0.0.1", parser.version
  end

end
