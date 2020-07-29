require 'pry'
class Backer
  attr_accessor :backed_projects
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name
    @backed_projects = []
    @@all << self
  end
  
  def back_project(project)
    @backed_projects << project 
    Project.all.find do |proj|
      if proj.title == self.backed_projects[0].title
        proj.backers << self
      end
    end
  end
  
  def self.all 
    @@all
  end
  
end