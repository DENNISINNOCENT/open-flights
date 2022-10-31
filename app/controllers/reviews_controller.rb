class ReviewsController < ApplicationController
   
    def create
        review = Review.create(review_params)
        render json: review,status: :created
    end
     
     def show
        review =find_reviews
        render json: review
    end

    def destroy
        review = find_reviews
        review.destroy
        head :no_content
    
    end

    private
    def find_reviews
        review = Review.find(params[:id])
    end

    def review_params
        params.permit(:title,:description,:score,:airline_id)
    end
end
