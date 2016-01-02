class ShortController < ApplicationController
  def create
	  	@value=params[:text]
	  	u=Url.new
	  	u.longurl=@value
	  	u.shorturl="aravinth"
	  	u.save
	 	render :json => u 
  end
  
end
