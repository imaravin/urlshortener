class ShortController < ApplicationController
	ALPHABET ="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMN\/%OPQRSTUVWXYZ0123456789".split(//)
	attr_accessor:link
  def create
	  	@value=params[:text]
	  	u=Url.new
	  	u.longurl=@value
	  	link=@value
	  	u.shorturl=bijective_encode()
	  	u.save
	 	render :json => u 
  end

	  def bijective_encode(i)
	   
			  return ALPHABET[0] if i == 0
			  s = ''
			  base = ALPHABET.length
			  while i > 0
			    s << ALPHABET[i.modulo(base)]
			    i /= base
			  end
			  s.reverse
	  end


		def bijective_decode(s)
		  i = 0
		  base = ALPHABET.length
		  s.each_char { |c| i = i * base + ALPHABET.index(c) }
		  i
		end
  
end
