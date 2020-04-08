class Backer

  attr_accessor :name
  attr_reader :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    if project.backers.include?(self)
    else
      project.add_backer(self)
    end
  end









end
