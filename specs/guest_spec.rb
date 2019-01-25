require("minitest/autorun")
require('minitest/rg')
require_relative("../guest")
require_relative("../song")

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Frank")
  end

  def test_customer_has_name
    assert_equal("Frank", @guest.name())
  end

end
