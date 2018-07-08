require_relative("room")
class Guest

attr_reader :name

def initialize (name, age, favourite_song, wallet)
  @name = name
  @age = age
  @favourite_song = favourite_song
  @wallet = wallet
end

  def name
    return @name
  end

  def entry_fee (room)
    @wallet -= room.entry_fee
    room.till += room.entry_fee
  end

end
