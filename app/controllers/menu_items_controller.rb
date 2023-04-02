class MenuItemsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def index
        render json: MenuItem.all, status: :ok
    end


    def show
        menu_item = MenuItem.find(params[:id])
        render json: menu_item, status: :ok
    end

    def create
        menu_item = MenuItem.create!(menu_items_params)
        render json: menu_item, status: :created
    end

    def update
        menu_item = MenuItem.find_by(id: params[:id])
        menu_item.update(menu_items_params)
        render json: menu_item, status: :ok
    end

    def destroy
        menu_item = MenuItem.find(params[:id])
        menu_item.destroy
        head :no_content
    end


    private
    def menu_items_params
        params.permit(:name, :image_url, :description, :price)
    end

    def record_not_found
        render json: {error: "Menu Item not found"}, status: :not_found
    end

    def record_invalid
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

end