class StocksController < ApplicationController
  def index
    stocks = Stock.where({album: params[:album_id]})
    render json: stocks.as_json()
  end

  def show
    stock = Stock.find(params[:id])
    render json: stock.as_json()
  end
  
  def create
    stock = Stock.create({
      medium: params[:medium], 
      stock_level: params[:stock_level],
      stock_threshold: params[:stock_threshold],
      buy_price: params[:buy_price], 
      sell_price: params[:sell_price],
      album_id: params[:album_id]
      })
    render json: stock
  end
end