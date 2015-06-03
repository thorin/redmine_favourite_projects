if Rails::VERSION::MAJOR >= 3
  get 'favourite_projects', :to => 'favourite_projects#index'
  post 'favourite_projects/add_project', :to => 'favourite_projects#add_project'
  post 'favourite_projects/remove_project', :to => 'favourite_projects#remove_project'

else
  ActionController::Routing::Routes.draw do |map|
    map.connect 'favourite_projects/:action', :controller => 'favourite_projects'
  end
end
