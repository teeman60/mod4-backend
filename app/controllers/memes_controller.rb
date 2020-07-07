class MemesController < ApplicationController
    before_action :current_meme, only: [:show]

    def index
        memes = Meme.all
        render json: memes.to_json
    end

    def show
        render json: @meme.to_json
    end

    def create
        meme = Meme.new(meme_params)
        # byebug
         meme.save
        render json: meme, status: :created, location: @meme
    end

    def update
        @meme.update(meme_params)
          render json: meme
        
    end

    
    def destroy
        meme.destroy
    end 


    def current_meme
        @meme = Meme.find(params[:id])
    end


    def meme_params
        params.require(:meme).permit(:name,:url,:category,:likes)
    end

end
