class Room

  attr_accessor(:song_library, :guests_present, :entry_fee, :nightly_take)
  attr_reader(:number, :guest_capacity)

  def initialize(number)
    @number = number
    @song_library = []
    @guests_present = []
    @entry_fee = 15
    @guest_capacity = 2
    @nightly_take = 0
  end

  def add_song(song)
    @song_library.push(song)
  end

  def remove_song(song)
    @song_library.delete(song)
  end

  def check_in(guest)
    if @guests_present.count < @guest_capacity
      take_payment(guest)
      @guests_present.push(guest)
      check_playlist(guest)
    else
      return "Sorry, the room is full now"
    end
  end

  def check_out(guest)
    @guests_present.delete(guest)
  end

  def check_playlist(guest)
    found_song = @song_library.find(){|song| song.title == guest.favourite_song}
    if found_song
      return "Whoo!" if found_song.title == guest.favourite_song
    end
  end

  def take_payment(guest)
    guest.money -= @entry_fee
    @nightly_take += @entry_fee
  end

end
