class FavouriteProject < ActiveRecord::Base
  unloadable
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
  belongs_to :project, :class_name => "Project", :foreign_key => "project_id"

  scope :ordered_by_name, lambda{|*args|
    includes(:project).order('projects.name')
  }
end
