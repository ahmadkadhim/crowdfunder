class PledgesController < ApplicationController

	before_filter :load_project

	def new
		# ask about bitmaker version, @project.pledges.build params[:pledge]
		@pledge = Pledge.new
	end

	def create
		@pledge = Pledge.new(
			user_id: current_user,
			project_id: @project.id,
			amount: params[:pledge][:amount])
		if @pledge.save
			redirect_to root_path, :notice => "Pledge submitted!"
		else
			render 'new'
		end
	end

	private
	def pledge_params
		return params.require(:pledge).permit(:amount, :user_id, :project_id)
	end

	def load_project
		@project = Project.find(params[:project_id])
	end

end

