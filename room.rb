require_relative("song")
require_relative("guest")
class Room
attr_reader :name, :playlist, :guest_list_reservation, :till, :entry_fee
  def initialize(name, playlist, seats, entry_fee)
    @name = name
    @playlist = playlist
    @guest_list_reservation = []
    @seats = seats
    @till = 0
    @entry_fee = entry_fee

  end

  def playlist
    return @playlist
  end


  def check_in guest
    @guest_list_reservation << guest

  end

  def check_out guest_list
    @guest_list_reservation.delete(guest_list)
  end

  # def guest_list_reservation
  #   return @guest_list_reservation
  # end

  def add_song song
    @playlist << song
  end

  def avalible_space
        if @seats > @guest_list_reservation.length
          return true
        else false
      end
  end

end
