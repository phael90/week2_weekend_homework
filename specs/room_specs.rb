require('minitest/autorun')
require_relative('../room')

class TestRoom < MiniTest::Test

  def setup
    @song_1 = Song.new("Hey Jude")
    @song_2 = Song.new("Ghost dance")
    @song_3 = Song.new("Starman")
    @song_4 = Song.new("Sweet home Alabama")
    @song_5 = Song.new("Always be mine")
    @song_6 = Song.new("Curtains Up")
    @song_7 = Song.new("White America")
    @song_8 = Song.new("Business")
    @song_9 = Song.new("Cleanin' Out My Closet")
    @song_10 = Song.new("Square Dance")
    @song_11 = Song.new("The Kiss - Skit")
    @song_12 = Song.new("Soldier")
    @song_13 = Song.new("Say Goodbye Hollywood")
    @song_14 = Song.new("Drips")
    @song_15 = Song.new("Without Me")

    @playlist_1 = [@song_6, @song_3, @song_6, @song_7, @song_8, @song_9,
      @song_10, @song_11, @song_12, @song_13, @song_14,
      @song_15]

    @playlist_2 = [@song_2, @song4, @song_6, @song_7, @song_8, @song_9,
      @song_10, @song_11, @song_12, @song_13, @song_14,
      @song_15]

    @playlist_3 = [@song_5, @song_1, @song_6, @song_7, @song_8, @song_9,
      @song_10, @song_11, @song_12, @song_13, @song_14,
      @song_15]

      @mike = Guest.new("Mike", 30, "Hey Jude", 100 )
      @joanna = Guest.new("Joanna", 27, "Ghost dance", 90)
      @vicky = Guest.new("Vicky", 25, "Starman", 80)
      @digory = Guest.new("Digory", 26, "Sweet home Alabama", 70)
      @tohran = Guest.new("Tohran", 33, "Always be mine", 60)
      @mark = Guest.new("Mark", 35, "Full house", 50)
      @deby = Guest.new("Deby", 21, "Without Me", 700)
      @gina = Guest.new("Gina", 20, "Soldier", 90)
      @mathew = Guest.new("Mathew", 23, "Business", 120)

    @guest_list_1 = [@mike, @joanna, @vicky]
    @guest_list_2 = [@digory, @thoran, @mark]
    @guest_list_3 = [@deby, @gina, @mathew]

    @room_1 = Room.new("A", @playlist_1, 2, 10)
    @room_2 = Room.new("B", @playlist_2, 4, 15)
    @room_3 = Room.new("C", @playlist_3, 5, 20)
  end

  def test_playlist
    assert_equal(@playlist_2, @room_2.playlist)
  end

  def test_check_in
    @room_1.check_in(@mike)
    @room_1.check_in(@joanna)
    @room_1.check_in(@mark)
    assert_equal(3, @room_1.guest_list_reservation.length)
  end

  def test_check_out
    @room_1.check_in(@mike)
    @room_1.check_in(@joanna)
    @room_1.check_in(@mark)
    @room_1.check_out(@mark)
    assert_equal(2, @room_1.guest_list_reservation.length)
  end

  def test_add_song
    @room_1.add_song(@song_1)
    assert_equal(13, @room_1.playlist.length)
  end

  def test_avalible_space
    @room_1.check_in(@mike)
    @room_1.check_in(@joanna)
    @room_1.check_in(@mark)
    assert_equal(false, @room_1.avalible_space)
  end
end
