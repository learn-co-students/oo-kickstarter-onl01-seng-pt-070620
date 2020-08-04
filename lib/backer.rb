class Backer

    attr_reader :name
    attr_accessor :backed_projects
   

    def initialize (name)
        @name = "Avi"
        @backed_projects = Array.new
       
    end

    def back_project(project)
        @backed_projects << project
        project.backers << self
        
    end



end
