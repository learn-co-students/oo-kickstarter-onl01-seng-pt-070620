require 'pry'
class Project
  attr_accessor :backers
  attr_reader :title
  @@all = []
  
  def initialize(title)
    @title = title
    @backers = []
    @@all << self
  end
  
  def add_backer(backer)
    @backers << backer
    Backer.all.find do |back|
      if back.name == self.backers[0].name
        back.backed_projects << self
      end
    end
  end
  
  def self.all 
    @@all
  end
end