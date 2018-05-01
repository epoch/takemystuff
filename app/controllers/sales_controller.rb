class SalesController < ApplicationController
  def new
  end

  def create
    sale = Sale.new
    sale.description = params[:description]
    sale.user_id = User.first.id # fix later
    sale.save
    redirect_to "/sales/#{ sale.id }"
  end

  def show
    @sale = Sale.find(params[:id])
  end
end