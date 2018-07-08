require('minitest/autorun')
require_relative('../guest')

class TestGuest < MiniTest::Test

  def setup
    @mike = Guest.new("Mike", 30, "Hey Jude", 100 )
    @joanna = Guest.new("Joanna", 27, "Ghost dance", 90)
    @vicky = Guest.new("Vicky", 25, "Starman", 80)
    @digory = Guest.new("Digory", 26, "Sweet home Alabama", 70)
    @tohran = Guest.new("Tohran", 33, "Always be mine", 60)
    @mark = Guest.new("Mark", 35, "Full house", 50)
    @deby = Guest.new("Deby", 21, "Without Me", 700)
    @gina = Guest.new("Gina", 20, "Soldier", 90)
    @mathew =Guest.new("Mathew", 23, "Business", 120)

    @room_1 = Room.new("A", @playlist_1, 2, 10)
    @room_2 = Room.new("B", @playlist_2, 4, 15)
    @room_3 = Room.new("C", @playlist_3, 5, 20)
  end

  def test_name
    assert_equal("Mike", @mike.name)
  end

  def test_entry_fee
    @mike.entry_fee(@room_1)
    assert_equal(90, @mike.wallet)
    #how to test if entry fee added money to till???
    # assert_equal(10, @room_1.till)
  end

end
