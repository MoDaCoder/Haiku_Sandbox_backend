class HaikusController < ApplicationController
    def index
        render json: Haiku.all
    end

    def create
        haiku = Haiku.create(haiku_params)
        render json: haiku
    end

    def update
        haiku = Haiku.find_by(id: params[:id])
        haiku.update(haiku_params)
        render json: haiku
    end

    def destroy
        # byebug
        haiku = Haiku.find(id: params[:id])
        haiku.destroy
        # render json: {message: "You have defeated Flatiron"}
        render json: haiku
    end

    private
    def haiku_params
        params.require(:haiku).permit(:title, :haiku, :genre)
    end
end
