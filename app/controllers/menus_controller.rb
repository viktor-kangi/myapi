class MenusController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def index
        render json: Menu.all, status: :ok
    end


    def show
        menu = Menu.find(params[:id])
        render json: menu, status: :ok
    end

    def create
        menu = Menu.create!(menu_params)
        render json: menu, status: :created
    end

    def update
        menu = Menu.find_by(id: params[:id])
        menu.update(menu_params)
        render json: menu, status: :ok
    end

    def destroy
        menu = Menu.find(params[:id])
        menu.destroy
        head :no_content
    end


    private
    def menu_params
        params.permit(:name, :image_url, :description, :price)
    end

    def record_not_found
        render json: {error: "Menu not found"}, status: :not_found
    end

    def record_invalid
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end