require('minitest/autorun')
require_relative('../song')

class TestSong < MiniTest::Test

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
  
  end

  def test_title
    assert_equal("Starman", @song3.title)
  end
end
