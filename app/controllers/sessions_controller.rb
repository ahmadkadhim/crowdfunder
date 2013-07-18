class SessionsController < ApplicationController
  def new
  end

  def create
  	respond_to do |format|
  		# binding.pry
  		if @user = login(params[:email],params[:password])
  			format.html { redirect_back_or_to(:users, :notice => "Login Successful")}
  			format.xml { render :xml => @user, :status => :created, :location => @user }
  		else
  			format.html { flash.now[:alert] = "Login failed."; render :action => 'new' }
  			format.xml { render :xml => @user.errors, :status => :unprocessable_entity }
  		end
  	end
  end

  def destroy
  	logout
  	redirect_to(:users, :notice => 'Logged out!')
  end



end
