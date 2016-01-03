class ShortController < ApplicationController
	ALPHABET ="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMN\/%OPQRSTUVWXYZ0123456789".split(//)
	attr_accessor:link
  def create
	  	@value=params[:text]
	  	u=Url.new
	  	u.longurl=@value
	  	
	  	tmp=""
	  	while true
	  		tmp=(0...6).map { (["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]).to_a[rand(52)] }.join
	  		if Url.find_by(shorturl:tmp)==nil
	  			then
	  			break
	  		end
	  	end
	  	u.shorturl=tmp;

	  	u.save
	 	render :json => u 
  end

  
end
