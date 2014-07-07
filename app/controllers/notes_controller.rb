class NotesController < ApplicationController

  def index
    if current_user.present?
    @books = Book.where(grade: current_user.grade.to_i)
  else
    flash[:error] = "Please login first"
    redirect_to new_user_session_path
  end
    #@uploader = Note.new.file
    #@uploader.success_action_redirect = new_note_url
  end

  def new
    @notes = Note.new(key: params[:key])
  end

  def download
    notes = Note.find(params[:id])
    send_file notes.file.path, :type => 'application/pdf', :filename => notes.file_url

  end


end
