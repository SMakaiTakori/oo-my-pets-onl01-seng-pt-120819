require 'pry'

class Owner
  
  attr_reader :name, :species
  attr_accessor :pets, :mood
  
  @@all = []
  
  def initialize(name)
  @name = name
  @species = "human"
  @mood = mood
  @@all << self
  end  
  
  def say_species
     "I am a #{@species}."
  end  
 
  def self.all
    @@all
  end  
  
  def self.count
    @@all.length
  end  
  
  def self.reset_all
    @@all.clear
  end 
   
  def self.pets
    @pets  
  end
    
  def cats
    Cat.all.select {|cat| cat.owner == self }
  end  
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end 
  
  def buy_cat(name)
    name = Cat.new(name, self)
  end  
  
  def buy_dog(name)
    name = Dog.new(name, self)
  end  
  
  def walk_dogs
    Dog.all.map {|dog| dog.mood = "happy"}
  end  
  
  def feed_cats
    Cat.all.map {|cat| cat.mood = "happy"}
  end 
  
  def sell_pets
      Cat.all.clear {|pet| pet.mood = "nervous"}
      Dog.all.clear {|pet| pet.mood = "nervous"}
     binding.pry
    end
  end
  
  






