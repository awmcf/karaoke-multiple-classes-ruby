class Guest

  attr_accessor :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def sufficient_funds?(room)
    return wallet >= room.price()
  end

  def book_room(room)
    if sufficient_funds?(room)
      @wallet -= room.price
    end
  end

end
