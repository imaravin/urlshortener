class ShortController < ApplicationController
  def create
	  	@value=params[:text]
	 	render json: params
  end
  
end
