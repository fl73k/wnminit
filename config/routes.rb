Rails.application.routes.draw do
	get 'projects/index'
	resources :projects
	root 'projects#index'
	resources :projects do
		resources :todos
	end
end
