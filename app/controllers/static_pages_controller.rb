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

  def help
  end

  def about
  end

  def contact
    results = HTTParty.get("http://api.developer.sears.com/v2.1/products/search/Sears/json/keyword/wrench?apikey=ktnenNM4NHI3gHkPdD11r0YBN4DkdqyA")
    product1 = results
    @name = product1['SearchResults']['Products'][1]['Description']['Name']
    @image = product1['SearchResults']['Products'][1]['Description']['ImageURL']
    @price = product1['SearchResults']['Products'][1]['Price']['DisplayPrice']
  end
   
end
