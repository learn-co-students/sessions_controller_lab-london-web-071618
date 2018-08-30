class SessionsController < ApplicationController
  def new
       # nothing to do here!
   end

   def create
       session[:name] = params[:name]
       if !!session[:name] && session[:name] != ""
         redirect_to '/'
       else
         redirect_to sessions_new_path
       end
   end

   def destroy
    session.delete :name
    redirect_to sessions_new_path
  end
end
