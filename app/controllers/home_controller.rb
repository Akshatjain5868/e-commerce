class HomeController < ApplicationController
  def index
	  @pizzas_gallery = Store.all
  end
end
