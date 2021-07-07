module Api
    module v1
        class CatgoriesController < ApplicationController
            before_action :set_catgory, only: :destroy


            def index
                @catgory = Catgory.all
                render json: CatgoriesRepresenter.new(@catgories).as_json
            end

            def create
                @catgory = Catgory.create(catgory_params)

                if @catgory.save
                    render json: CatgoriesRepresenter.new(@catgory).as_json, status: :created
                else
                    render json: @catgory.errors, status: :unprossable_enity
            end


            def destroy
                @catgory.destory
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

