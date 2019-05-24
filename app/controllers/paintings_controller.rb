class PaintingsController < ApplicationController
  def index
    # cu
  end

  def show
    # cu
  end

  def new
    @painting = Painting.new
    @painting.artist = @artist
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @painting = @artist.paintings.build(painting_params)
    if @painting.save
      redirect_to artist_path(@painting.artist)
    else
      render :new
    end
  end

  def edit
    # cu
  end

  def update
    # cu
  end

  def destroy
    @painting = Painting.find(params[:id])
    @painting.destroy
    redirect_to artist_path(@painting.artist)
  end

  private

  def painting_params
    params.require(:painting).permit(:description, :artist_id)
  end
end
