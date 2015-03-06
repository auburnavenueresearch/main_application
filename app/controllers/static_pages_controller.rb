class StaticPagesController < ApplicationController
	
  def home
    if signed_in?
      @post = current_user.posts.build 
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
    results = HTTParty.get("http://api.momentfeed.com/pinsync.json?name=Sears&locality=Atlanta&region=GA&api_token=VROUGHASWYWKAWMY")
    store1 = results.first
    @name = store1['store_info']['name']
    @address = store1['store_info']['address']
  end

  def team
  end

  def about
  end

  def library
  end
   
end
