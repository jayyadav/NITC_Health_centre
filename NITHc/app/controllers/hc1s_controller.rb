class Hc1sController < ApplicationController

    def new1
	  @hc1=Hc1.new
    end
	
	def create1
	  @hc1=Hc1.new(params[:hc1])
	  @hc1.save
      redirect_to "/hc1s/#{@hc1.id}"	
	end
	
	def show1
	  @hc1 = Hc1.find(params[:id])
	end
	
	def index1
		@i=Hc1.find(:all)
	end
	
	def edit
	
	@hc1=Hc1.find(params[:id])	
	end
	
	def update
	@hc1=Hc1.find(params[:id])
    @hc1.update_attributes(params[:hc1])
    redirect_to "/hc1s/#{@hc1.id}"	
	end
end
