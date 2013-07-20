class My::ProjectsController < ApplicationController

	before_filter :require_project, :except => [:index, :new, :create]

	def index
		@projects = Project.where(user_id: current_user.id)
	end

	def show
		@project = Project.find(params[:id])
	end

	def new

	end

	def edit
		if current_user.id != @project.user_id
			not_found
		end
	end

	def update
	  if @project.update_attributes my_project_params
	      redirect_to [:my, :projects], notice: "Project updated!"
	  else
	      render :edit
	  end
	end

	def not_found
  		render root
	end

	private

	def my_project_params
		return params.require(:project).permit(:title,:description,:teaser,:user_id,:goal)
	end

	def require_project
	    @project = Project.find(params[:id])
	end

end
