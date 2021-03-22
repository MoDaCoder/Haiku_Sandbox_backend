class EditsController < ApplicationController
    def index
        render json: Edit.all
    end

    def create
        edit = Edit.create(edit_params)
            edit.save
            render json: edit
    end

    private
    def edit_params
        params.require(:edit).permit(:edit, :haiku_id)
    end
end
