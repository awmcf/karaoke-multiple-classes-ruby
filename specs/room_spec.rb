require("minitest/autorun")
require('minitest/rg')
require_relative("../room")
require_relative("../guest")
require_relative("../song")

class RoomTest < MiniTest::Test

  def setup
    @song_1 = Song.new("Moon River")
    @guest_1 = Guest.new("Frank", 100)
    @room_1 = Room.new("Mainstage Room", 20)
  end

  def test_room_name
    assert_equal("Mainstage Room", @room_1.name)
  end

  def test_is_room_in_use?
    assert_equal(false ,@room_1.room_in_use)
  end

  def test_check_in_guest
    @room_1.check_in_guest(@guest_1.name)
    assert_equal(true ,@room_1.room_in_use)
  end

  def test_check_out_guest
    @room_1.check_out_guest(@guest_1.name)
    assert_equal(false ,@room_1.room_in_use)
  end

  def test_add_song_to_a_room
    @room_1.add_song(@song_1.title)
    assert_equal(["Moon River"], @room_1.songs_list)
  end

  def test_can_provide_room
    @room_1.provide_room(@guest_1, @room_1)
    assert_equal(80, @guest_1.wallet())
  end


end
