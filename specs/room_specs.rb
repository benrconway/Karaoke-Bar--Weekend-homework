require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../songs.rb")
require_relative("../guest.rb")

class RoomTest < Minitest::Test

  def setup
    @guest = Guest.new("Astrid")
    @guest = Guest.new("Donald")

    @song = Song.new("Stairway to Heaven", "Led Zepplin")
    @song2 = Song.new("Barbie Girl", "Aqua")
    @song3 = Song.new("Voodoo People", "Prodigy")

    @room = Room.new(number)

  end

  def test_has_room_number
  end

  def test_room_has_songs__empty
  end

  def test_room_has_songs__pre_existing
  end

  def test_can_add_songs_to_room
  end

  def test_can_remove_songs
  end

  def test_can_have_guests__empty
  end

  def test_can_add_guests
  end

  def test_can_remove_guests
  end
end
