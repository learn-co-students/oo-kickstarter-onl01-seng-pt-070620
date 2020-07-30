require 'pry'
class Backer

  attr_accessor :backed_projects
  attr_reader :projects, :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self #also adds the backer to the project's backers array
  end









end
