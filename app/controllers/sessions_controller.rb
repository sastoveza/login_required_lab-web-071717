class SessionsController < ApplicationController

	def new
	end

	def create
		if params[:name] && !params[:name].empty?
			session[:name] = params[:name]

			redirect_to homepage_path
		else 
			redirect_to login_path
		end
	end

	def show
		@current_user = current_user
	end

	def destroy
		session[:name] = nil

		redirect_to login_path
	end
end
