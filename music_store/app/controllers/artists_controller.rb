class ArtistsController < ApplicationController
  def index
    artists = Artist.all
    render json: artists.as_json(
      only: [:id, :name, :genre],
      include:{
        albums:{
          only:[:id, :name, :cover],
          include:{ 
            stock:{
              except:[:created_at, :updated_at, :album_id]
            }
          }
        }
      }
    )
  end
end