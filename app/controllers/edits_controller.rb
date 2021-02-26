class EditsController < ApplicationController
    def index
        edit = Edit.all 
        render json: EditSerializer.new(Edit.all)
        # render json: EditSerializer.new(edit).serialized_json
    end

    def create
        edit = Edit.create(edit_params)
        render json: EditSerializer.new(edit)
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
