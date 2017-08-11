require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class GuestTest < Minitest::Test

  def setup
    @guest = Guest.new("Astrid", 100)
  end
  
  def test_guest_has_a_name
    assert_equal("Astrid", @guest.name)
  end

  def test_guest_has_money
    assert_equal(100, @guest.money)
  end

end
