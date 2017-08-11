require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class GuestTest < Minitest::Test

  def setup
    @guest = Guest.new("Astrid")
  end

  def test_guest_name_is
  end

end
