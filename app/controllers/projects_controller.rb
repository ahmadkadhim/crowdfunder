class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
	end

	def new
	end

	private

	def project_params
		return params.require(:project).permit(:title,:description,:teaser,:user_id,:goal)
	end

	

end