class BirdsController < ApplicationController

    before_action :find_bird_by_id, only: [:show, :update, :destroy]

    def index
        @birds = Bird.all

        render json: @birds
    end

    def show
        render json: @bird
    end

    def create
        @bird = Bird.create(bird_params)
        render json: @bird
    end

    def update
        @bird.update(bird_params)

        render json: @bird
    end

    def destroy
        @bird.destroy

        redirect_to action: "index"
    end

    private

    def find_bird_by_id
        @bird = Bird.find(params[:id])

        render json: @bird
    end

    def bird_params
        params.require(:bird).permit(:species, :age, :size)
    end

end
