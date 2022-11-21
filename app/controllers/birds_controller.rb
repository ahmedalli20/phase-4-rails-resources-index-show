class BirdsController < ApplicationController
    def index
        birds = Bird.all
        render json: birds, status: :ok
    end

    def show
       bird = Bird.find_by(id: params[:id])
      if bird
        render json: bird
      else 
        render json: {error: "bird not found"}, statusa: :not_found
      end
    end
end
