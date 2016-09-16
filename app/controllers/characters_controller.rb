class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def new
    @character =  Character.new
  end

  def create
    @character = Character.new character_params
    if @character.save
      redirect_to root_path
    else
      render :action => 'new'
    end
  end

  def show
  end

  private
  def character_params
    params.require(:character).permit(:name)
  end
end
