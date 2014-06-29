class HcsController < ApplicationController


    def login
    end

	def rnew1
    end
	
	def rnew2
    end
	
	def show2
	end
	
	def rindex1
       @hc1=Hc1.find_all_by_stu_id(params[:eid])
	end
	
	def index1
		@hc1=Hc1.find(:all)
	end
	
	def rindex2
       @hc2=Hc2.find(:all)
	end
	
	def index2
		@hc2=Hc2.find(:all)
	end
	
	def new
	  @hc=Hc.new
	end
	
	def create
	  @hc=Hc.new(params[:hc])
	  if @hc.save
      redirect_to "/hcs/#{@hc.id}"
       else
        render :template=>'/hcs/new'
      end		
	end
	
	def show
	  @hc = Hc.find(params[:id])
	end
	
	def index
		@hc=Hc.find(:all)
	end
	
	def detail
	   @hc=Hc.find(:all)
    end
	
    def new1
	  @hc1=Hc1.new
    end
	
	def create1
	  @hc1=Hc1.new(params[:hc1])
	   if @hc1.save
         redirect_to "/hcs/rnew1"
        else
          render :template=>'/hcs/rnew1'
          end		  
	end
	
	def new2
	  @hc2=Hc2.new
    end
	def error
	end
	
	def create2
	  @hc2=Hc2.new(params[:hc2])
	  @hc2.save
      redirect_to "/hcs/rnew2"	
	end
	
	def edit
	   @hc=Hc.find(params[:id])	
	end
	
	def update
	   @hc=Hc.find(params[:id])
       @hc.update_attributes(params[:hc])
       redirect_to "/hcs/#{@hc.id}"	
	end
	
	def in
	  @a=params[:sid]
	  @b=params[:psw]
	  @c=params[:cat]
      @hc=Hc.find(:all, :conditions=>["stu_id='#{@a}' and password='#{@b}' and category='#{@c}'"])	
	  if @hc.size==0
	    
		redirect_to "/hcs/error"
		
	  else
		 if @c=="staff"
	    render :template=>"/hcs/main"
		 end
	  end
	end
end
