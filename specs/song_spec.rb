require("minitest/autorun")
require('minitest/rg')
require_relative("../song")

class SongTest < MiniTest::Test

  def setup
    @song_1 = Song.new("Moon River")
  end

  def test_song_has_title
    assert_equal("Moon River", @song.title())
  end

end
