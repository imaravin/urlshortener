class WelcomeController < ApplicationController
  def index
  	puts "ip is"+request.remote_ip
  end
  
end
