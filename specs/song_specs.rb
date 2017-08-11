require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class SongTest < Minitest::Test

  def setup
    @song = Song.new("Stairway to Heaven", "Led Zepplin")
  
  end

  def test_song_title
    assert_equal("Stairway to Heaven", @song.title)

  end

  def test_song_artist
    assert_equal("Led Zepplin", @song.artist)
  end




end
