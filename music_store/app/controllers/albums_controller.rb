class AlbumsController < ApplicationController
  def index
    if params[:artist_id]
      albums = Album.where({artist_id: params[:artist_id]})
      render json: albums.as_json()
    else
      albums = Album.all
      render json: albums.as_json({
        only: [:id, :artist_id, :name, :cover],
        include: {
          stock: {except: [:created_at, :updated_at, :album_id]}
          }
        })
    end
  end

  def show
    album = Album.find(params[:id])
    render json: album.as_json()
  end
  
  def create
    album = Album.create({
      name: params[:name], 
      cover: params[:cover], 
      artist_id: params[:artist_id]})
    render json: album
  end
end