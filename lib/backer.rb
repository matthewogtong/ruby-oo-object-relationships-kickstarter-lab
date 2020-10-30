require 'pry'

class Backer

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    #backed_projects return an array of projects associated with this Backer instance
    def backed_projects
        project_backers = ProjectBacker.all.select do |pb|
            pb.backer == self
        end
        project_backers.map do |pb|
            pb.project
        end
    end
end