class PagesController < ApplicationController
	def index
		@wish = Wish.new
		#@wishes = Wish.all.sort {|a,b| b.created_at <=> a.created_at}
		#@wishes = Wish.order('created_at desc').page(params[:page]).per(25)
        @wishes = Wish.order("created_at desc").page(params[:page]).per_page(25)

    
    end
    def create
    	@wish = Wish.create(:content => params["wish"]["content"])

    	@wishes = Wish.order("created_at desc").page(params[:page]).per_page(25)

    	respond_to do |format|
    		format.js
    	end

    end
end
