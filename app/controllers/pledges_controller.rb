class PledgesController < ApplicationController

	before_filter :require_login
	before_filter :load_project

	def new
		# ask about bitmaker version, @project.pledges.build params[:pledge]
		@pledge = Pledge.new
	end

	def create
		@pledge = Pledge.new(
			user_id: current_user.id,
			project_id: @project.id,
			amount: params[:pledge][:amount])
		if @pledge.save
			redirect_to project_path(@project[:id]), :notice => "Thanks for pledging!"
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

