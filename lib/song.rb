require 'pry'
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
    self.all << song
    return song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    return song
  end

  def self.create_by_name(name)
    song = self.create
    song.name = name
    # self.all << song
    return song
  end

  def self.find_by_name(name)
    binding.pry
    self.all.find {|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    # binding.pry
    if self.find_by_name(name) == nil
      self.create_by_name(name)
    else
      self.find_by_name(name)
    end
    # self.find_by_name(name) || self.create_by_name(name)
  end

  def self.alphabetical

  end

  def self.new_from_filename

  end

  def self.create_from_filename

  end

  def self.destroy_all

  end

end
