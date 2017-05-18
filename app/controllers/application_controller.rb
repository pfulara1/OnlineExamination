class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def authenticate_teacher!
    unless model_signed_in? && current_model.usertype == 1
      redirect_to root_path,notice: {error: 'You are not authorized to take exam'}
    end  
  end
  
  def authenticate_student!
    unless model_signed_in? && current_model.usertype == 0
      redirect_to root_path,notice: {error: 'You are not authorized to create exam'}
    end  
  end
  
end
