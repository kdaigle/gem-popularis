require "./test/test_helper"
require "./lib/gem_popularis/gem_list_parser"

class GemListParserTest < Minitest::Test

  def test_parses_a_hash_of_name_and_version
    parser = GemPopularis::GemListParser.new("\n*** REMOTE GEMS ***\n\ntest (0.0.1)\ntwo (0.0.2)\n")
    expected = {"test" => "0.0.1", "two" => "0.0.2"}
    assert_equal expected, parser.gems
  end

end
