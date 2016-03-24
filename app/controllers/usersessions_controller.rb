class UsersessionsController < ApplicationController
  def sign_in
  	@user=User.new
  end

  def create
  	user=User.where("email = ? and password = ? ",params[:email],params[:password])
  	if user.present?
  		flash[:notice] = "Succesfully logged in"
  		redirect_to posts_path
  	else 
  		flash[:notice]  = "Invalid email or password"
  		render :action => "sign_in"
  	end
  end

  def sign_up
  end
end
