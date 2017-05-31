class ProjectsController < ApplicationController
	def show
		@project = Project.find(params[:id])
	end
	def index
		@project = Project.all
	end
	def new
	end
	def edit
		@article = Article.find(params[:id])
	end
	def create
		@project = Project.new(project_params)
		@project.save
		redirect_to @project
	end
	private
		def project_params
			params.require(:project).permit(:title)
		end
end
