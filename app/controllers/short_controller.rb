class ShortController < ApplicationController
  def create
	  	@value=params[:text]
  end
end
