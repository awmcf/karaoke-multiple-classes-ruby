require("minitest/autorun")
require('minitest/rg')
require_relative("../guest")
require_relative("../song")
require_relative("../room")

class GuestTest < MiniTest::Test

  def setup
    @room_1 = Room.new("Mainstage Room", 20)
    @guest = Guest.new("Frank", 100)
  end

  def test_customer_has_name
    assert_equal("Frank", @guest.name())
  end

  def test_customer_has_wallet
    assert_equal(100, @guest.wallet())
  end

  def test_sufficient_funds
    assert_equal(true, @guest.sufficient_funds?(@room_1))
  end

  def test_guest_can_book_room_decreases_money
  @guest.book_room(@room_1)
  assert_equal(80, @guest.wallet)
  end

end
