class ProfessionsController < ApplicationController
	def index
		@professions = Profession.all

	end

	def show
		@profession = Profession.find(params[:id])
	end

	def new
		@profession = Profession.new
	end

	def create
		@profession = Profession.new(profession_params)
		if @profession.save
			redirect_to @profession
		else
			render "new"
		end
	end

	private 
	def profession_params
		params.require(:profession).permit(:name)
	end

end