module Api
    module V1
      class CatgoriesController < ApplicationController

        before_action :set_catgory, only: :destroy
        # GET /categories
        def index
          @catgories = Catgory.all
          render json: CatgoriesRepresenter.new(@catgories).as_json
        end
        # POST /Catgory
        def create
          @catgory = Catgory.create(catgory_params)
          if @catgory.save
            render json: CatgoryRepresenter.new(@catgory).as_json, status: :created
          else
            render json: @catgory.errors, status: :unprocessable_entity
          end
        end
        # DELETE /categories/:id
        def destroy
          @catgory.destroy
          head :no_content
        end
        private
        def catgory_params
          params.permit(:name)
        end
        def set_catgory
          @catgory = Catgory.find(params[:id])
        end
      end
    end
   end