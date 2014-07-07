class AskquestionsController < ApplicationController

  def new
  	if current_user.present?
    	@askquestion = Askquestion.new
	else
		flash[:error] = "Please login first."
		redirect_to new_user_session_path
	end  
  end
  def create
  	if current_user.present?
	    @askquestion = Askquestion.new(params[:askquestion])
	    @askquestion.save
	    redirect_to books_path, :notice => "Your question successfully saved"
  	else
  		flash[:error] = "Please login first."
  		redirect_to new_user_session_path
  	end
  end
end
