class Project

  attr_accessor :backers

  attr_reader :title

  def initialize(title)
    @title = "Project With So Much Amaze"
    @backers = []
  end

  def add_backer(backer)
  @backers << backer
  backer.backed_projects << self
  end
end
