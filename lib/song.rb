class Song

  attr_accessor :name, :genre, :artist

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name,artist,genre)
    @name = name 
    @genre = genre
    @artist = artist

    @@count += 1
    @@artists << artist
    @@genres << genre

   
      
    
  end

  def self.count
    @@count
  end

  def self.artists
   # if @@artists.include?@artist
    #  puts "Artist already exists"
    #  else 
     #   @@artists << @artist
      
    #end
    @@artists.uniq
  
  end

  def self.genres
    #if @@genres.include?@genre
      #puts "Artist already exists"
      #else 
       # @@genres << @genre
      
    #end
    @@genres.uniq
  end

  def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each do | genre| 
      genre_count[genre] += 1
    end
    genre_count
  end

  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each do | artist | 
      artist_count[artist] += 1
    end
    artist_count
  end

  
end

popping = Song.new("Brittany Spears",'Brittany Spears', 'pop' )
popping = Song.new("Jay-Z",'Jay-Z', 'rap' )
popping = Song.new("Jay-Z",'Jay-Z', 'rap' )

popping.artist
popping.genre
popping.name

Song.count
p Song.artists
p Song.genres
p Song.artist_count