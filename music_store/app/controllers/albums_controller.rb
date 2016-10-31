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
end