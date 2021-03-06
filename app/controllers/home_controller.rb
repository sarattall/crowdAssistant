class HomeController < ApplicationController

  def index
    @current_user = current_user
    #redirect_to tasks_path unless @current_user.nil?

    @welcome_message = "Welcome to Crowd Assistant. Please Log in to get started"
    @welcome_message = "Welcome, #{@current_user.name}." unless @current_user.nil?

    @banner_url = view_context.image_path('crowd_graph.png') 
    @navbar_image_url = view_context.image_path('clean_textile.png') 

    @task = Task.new
  end
  
  def error
  	flash[:error] = "Authentication Error"
  	redirect_to :action=>"index"
  end

end
