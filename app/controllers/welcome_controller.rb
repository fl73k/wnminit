class WelcomeController < ApplicationController
	def create
		@project = Project.all
	end
end
