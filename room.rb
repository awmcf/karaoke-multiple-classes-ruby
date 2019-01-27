class Room

attr_accessor :name, :songs_list, :guests, :room_in_use

  def initialize(name)
    @name = name
    @songs_list = []
    @guests = []
    @room_in_use = false
  end

  def check_in_guest(guest)
    @room_in_use = true
    @guests << guest
  end

  def check_out_guest(guest)
    @room_in_use = false
    @guests.pop
  end

  def add_song(song_name)
    @songs_list.push(song_name)
  end

end
