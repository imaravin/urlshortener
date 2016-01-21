class WelcomeController < ApplicationController
  def index
  	puts request.xhr?
  end
  
end
