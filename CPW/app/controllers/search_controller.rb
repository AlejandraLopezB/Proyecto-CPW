class SearchController < ApplicationController
  def index
  	if params[:q]
      page = params[:page] || 1
      @results = GoogleCustomSearchApi.search(params[:q],page: page)
      #@random_images.push results.items[rand(results.items.size)].link
	end

	@bloqueada = Bloqueada.new
  end
end
