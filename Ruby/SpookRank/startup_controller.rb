class StartupController < ApplicationController

  def movielist
  	@moviedata=Movies.all
  	@rankingdata=Rankings.all
  	#sorts the data
  	@rankingdata = Rankings.order(:Rating)
  end

  def addrating
  	@moviedata=Movies.all
  	@rankingdata=Rankings.all
  	@ranking = Rankings.new
  end

  def viewrating
   	@moviedata=Movies.all
  	@rankingdata=Rankings.all
  end

  #new for take-home final
  def addcomment
    @moviedata=Movies.all
    @commentdata=Comments.all
    @comment = Comments.new
  end

  #new for take-home final
  def viewcomment
    @moviedata=Movies.all
    @commentdata=Comments.all
  end

  def new
    @ranking = Rankings.new(ranking_params)
		respond_to do |format|
			if @ranking.save
				format.html { redirect_to controller: 'startup', action: 'addratinghandle'}
			else
				format.html { render :new }
				format.json { render json: @ranking.errors, status: :unprocessable_entity }
			end
		end
   end	
#new for take-home final
  def new2
    @comment = Comments.new(comment_params)
    respond_to do |format|
      if @comment.save
        format.html { redirect_to controller: 'startup', action: 'addcommenthandle'}
      else
        format.html { render :new2 }
        format.json { render json: @ranking.errors, status: :unprocessable_entity }
      end
    end
   end  

  def holderoooooo

    @moviedata.each do |line|
    line.name
    end

    @rankingdata.each do |line1|
    line1.rating
    end
end

    def ranking_params
      params.require(:rankings).permit(:id, :jump, :thrill, :sfx, :rating)
    end

#new for take-home final
    def comment_params
      params.require(:comments).permit(:id, :comment)
    end
end
