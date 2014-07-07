class QuereysController < ApplicationController

  def new
  	if current_user.present?
    	@querey = Querey.new
	else
		flash[:error] = "Please login first."
		redirect_to new_user_session_path
	end

  end

  def create
  	if current_user.present?
	    @querey = current_user.quereys.build(params[:querey]) if current_user.present?
	    @querey.save
	    redirect_to books_path, :notice=>"Your suggestion successfully saved"
  	else
		flash[:error] = "Please login first."
		redirect_to new_user_session_path  		
  	end
  end
end
