class EditsController < ApplicationController
    def index
        render json: Edit.all
    end

    def create
        edit = Edit.create(edit_params)
            edit.save
            render json: edit
    end

    # def update
    #     edit = Edit.find_by(id: params[:id])
    #     edit.update(edit_params)
    #     render json: EditSerializer.new(edit)
    # end

    # def destroy
    #     edit = Edit.find_by(id: params[:id])
    #     edit.destroy
    #     render json: {message: "You have defeated Flatiron"}
    # end

    private
    def edit_params
        params.require(:edit).permit(:edit, :haiku_id)
    end
end
