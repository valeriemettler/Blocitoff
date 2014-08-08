class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

   def hello
     render text: "<h1>Welcome to Blocitoff</h1><p>A Self-Destructing To-Do List</p>"
   end
end
