require("minitest/autorun")
require('minitest/rg')
require_relative("../song")

class SongTest < MiniTest::Test

  def setup
    @song = Song.new("Moon River")
  end

  def test_song_has_name
    assert_equal("Moon River", @song.name())
  end

end
