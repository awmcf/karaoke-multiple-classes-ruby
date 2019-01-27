class Room

attr_accessor :name, :songs_list, :guests, :room_in_use, :price, :capacity

  def initialize(name, price)
    @name = name
    @songs_list = []
    @guests = []
    @room_in_use = false
    @price = price
    @capacity = 2
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

  def provide_room(guests, room)
    if @room_in_use == false
      guests.book_room(room)
    end
  end

end
