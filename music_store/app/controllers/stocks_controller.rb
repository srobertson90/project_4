class StocksController < ApplicationController
  def index
    stocks = Stock.where({album: params[:album_id]})
    render json: stocks.as_json()
  end
end