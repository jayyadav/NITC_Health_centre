class Hc2sController < ApplicationController

    def new2
	  @hc2=Hc2.new
    end
	
	def create2
	  @hc2=Hc2.new(params[:hc2])
	  @hc2.save
      redirect_to "/hc2s/#{@hc2.id}"	
	end
	
	def show2
	  @hc2 = Hc2.find(params[:id])
	end
	
	def index2
		@hc=Hc2.find(:all)
	end
	
end
