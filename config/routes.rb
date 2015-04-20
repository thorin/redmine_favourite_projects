if Rails::VERSION::MAJOR >= 3
	get 'favourite_projects/:action', :controller => 'favourite_projects'
else
  ActionController::Routing::Routes.draw do |map|
    map.connect 'favourite_projects/:action', :controller => 'favourite_projects'
  end
end