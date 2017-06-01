Rails.application.routes.draw do
	root to: 'todos#index'
	root 'todos#index'
	resources :todos
end
