Rails.application.routes.draw do
	get 'todos/index'
	resources :todos
	root to: 'todos#index'
	root 'todos#index'
end
