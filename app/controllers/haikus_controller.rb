class HaikusController < ApplicationController
    def index
        haiku = Haiku.all
        render json: HaikuSerializer.new(Haiku.all)
    end

    def create
        haiku = Haiku.create(haiku_params)
        render json: HaikuSerializer.new(haiku)
    end

    def update
        haiku = Haiku.find_by(id: params[:id])
        haiku.update(haiku_params)
        render json: HaikuSerializer.new(haiku)
    end

    def destroy
        haiku = Haiku.find_by(id: params[:id])
        haiku.destroy
        render json: {message: "You have defeated Flatiron"}
    end

    private
    def haiku_params
        params.require(:haiku).permit(:title, :haiku, :genre)
    end
end
