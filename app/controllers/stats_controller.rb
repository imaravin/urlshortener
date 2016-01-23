class StatsController < ApplicationController
  def index
  	v=params[:id]
  	x=Url.find_by(shorturl:v)
  	if(x==nil)
  		@url=[]
  	else
  		@url=x.ip.split(" ")
  	end
  end

  def all
  	@url=Url.all()
  end
end
