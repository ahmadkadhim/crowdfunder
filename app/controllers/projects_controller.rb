class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def show

	end

	def new
	end
end