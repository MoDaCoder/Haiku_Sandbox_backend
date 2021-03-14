class HaikusController < ApplicationController
    def index
        # byebug
        # haiku = Haiku.all
        # render json: HaikuSerializer.new(Haiku.all)
        render json: Haiku.all
    end

    def create
        # byebug
        haiku = Haiku.create(haiku_params)
        render json: haiku

        # render json: HaikuSerializer.new(haiku)
        # haiku = Haiku.create(haiku_params)
    end

    def update
        haiku = Haiku.find_by(id: params[:id])
        haiku.update(haiku_params)
        # render json: HaikuSerializer.new(haiku)
        render json: haiku
    end

    def destroy
        # byebug
        haiku = Haiku.find(id: params[:id])
        haiku.destroy
        render json: {message: "You have defeated Flatiron"}
    end

    private
    def haiku_params
        params.require(:haiku).permit(:id, :title, :haiku, :genre)
    end
end
