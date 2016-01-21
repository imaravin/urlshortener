class ShortController < ApplicationController
	
	
  def create
	  	@value=params[:text]
	  	u=Url.new
	  	if !@value.start_with?("http://") && !@value.start_with?("https://")
	  	u.longurl="http://"+@value
	    else
	  	u.longurl=@value
	  	end
	  	
	  	tmp=""
	  	while true
	  		tmp=(0...6).map { (["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]).to_a[rand(52)] }.join
	  		if Url.find_by(shorturl:tmp)==nil
	  			then
	  			break
	  		end
	  	end
	  	u.shorturl=tmp;
	  	u.clickcount=0;
	  	u.ip=""
	  	u.save
	 	render :json => u 
  end


  def redirect
  	x=params[:id]
  	if x.length < 6 || x.length > 6
  		redirect_to '/static_pages/fournotfour'
  	end
  	u=Url.find_by(shorturl:x)
  	if u!=nil
  	then
  	u.clickcount=u.clickcount + 1
  	u.ip=u.ip+" "+request.remote_ip
  	u.save
  	redirect_to URI.encode(u.longurl)
  	else
  		redirect_to "/static_pages/fournotfour"
  	end
  	
  end


  
end
