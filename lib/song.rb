class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    @@all << song 
    song 
  end 
  
  def self.new_by_name(name)
    song = self.new  
    song.name = name 
    song 
  end 
  
  def self.create_by_name(name)
    song = self.new 
    song.name = name 
    @@all << song 
    song
  end 
  
  def self.find_by_name(name)
    @@all.find{|song| song.name == name}
  end 
  
  def self.find_or_create_by_name(name) 
      if self.find_by_name(name) == nil
         self.create_by_name(name)
    else 
      self.find_by_name(name)
    end 
  end 
  
  def self.alphabetical 
    @@all.sort_by {|x| x.name}
  end 
  
  def self.new_from_filename(filename)
    rows = filename.split("\n")
    songs = rows.collect do |row|
    data = row.split(", ")
    artist_name = data[0]
    name = data[1]
    file_type = data[2]
  
    song = song.new
    song.name = name
    song.artist_name = artist_name
    song.file_type = file_type
    song 
    binding.pry
  end 
  
end 

