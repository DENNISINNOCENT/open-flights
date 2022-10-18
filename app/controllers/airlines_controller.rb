class AirlinesController < ApplicationController

    def index
        airlines = Airline.all 
        render json: airlines
    end

    def show
        airline = find_airlines
        render json: airline
    end

    def create 
        airline =airline_params
        render json: airline ,status: :created

    end
     def update
        airline =find_airlines
        airline.update(airline_params)
        render json: airline,status: :created
     end

     def destroy
        airline =find_airlines
        airline.destroy
        head :no_content
     end

    private
    def find_airlines
        Airline.find(params[:id])
    end

    def airline_params
        params.permit(:name,:image_url)
    end

end
