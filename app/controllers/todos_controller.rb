class TodosController < ApplicationController
	def index
		@project = Project.all
	end
	def edit
		@todo = Todo.find(params[:id])
		if @todo.isCompleted == true
			@todo.update(isCompleted: false)
		else
			@todo.update(isCompleted: true)
		end
		redirect_to @todo
	end
	def create
		@project = Project.all
		@todo = Todo.new(todo_params)
		@todo.save
		redirect_to root_path
	end
	def show
		redirect_to root_path
	end
	private
		def todo_params
			params.require(:todo).permit(:text, :project_id)
		end
end
