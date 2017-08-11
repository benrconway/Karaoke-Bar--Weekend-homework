require("minitest/autorun")
require("minitest/rg")
require("pry")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")

class RoomTest < Minitest::Test

  def setup
    @guest = Guest.new("Astrid", 100)
    @guest2 = Guest.new("Donald", 10)

    @song = Song.new("Stairway to Heaven", "Led Zepplin")
    @song2 = Song.new("Barbie Girl", "Aqua")
    @song3 = Song.new("Voodoo People", "Prodigy")

    @room = Room.new(1)

  end

  def test_has_room_number
    assert_equal(1, @room.number)
  end

  def test_room_has_songs__empty
    assert_equal([], @room.song_library)
  end

  def test_can_have_guests__empty
    assert_equal([], @room.guests_present)
  end

  def test_can_add_songs_to_room
    @room.add_song(@song)
    assert_equal(1, @room.song_library.count)
  end

  def test_can_remove_songs
    @room.add_song(@song)
    @room.add_song(@song2)
    @room.remove_song(@song)
    assert_equal(1, @room.song_library.count)
  end

  def test_can_add_guests
    @room.check_in(@guest)
    assert_equal(1, @room.guests_present.count)
  end

  def test_can_remove_guests
    @room.check_in(@guest)
    @room.check_in(@guest2)
    @room.check_out(@guest)
    assert_equal(1, @room.guests_present.count)
  end

  def test_room_has_entry_fee
    assert_equal(15, @room.entry_fee)
  end

  def test_room_charges_for_entry
    @room.check_in(@guest)
    assert_equal(85, @guest.money)
  end

  def test_guest_capacity
  end

  def test_deny_guest_without_enough_money

  end

end
