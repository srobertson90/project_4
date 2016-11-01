class ArtistsController < ApplicationController
  def index
    artists = Artist.all
    render json: artists.as_json(
      only: [:id, :name, :genre],
      include:{
        albums:{
          only:[:id, :title, :cover],
          include:{ 
            stock:{
              except:[:created_at, :updated_at, :album_id]
            }
          }
        }
      }
    )
  end

  def show
    artist = Artist.find(params[:id])
    render json: artist.as_json()
  end
  
  def create
    artist = Artist.create({
      name: params[:name], 
      genre: params[:genre]})
    render json: artist
  end
end