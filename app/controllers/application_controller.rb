class ApplicationController < ActionController::Base
protect_from_forgery with: :null_session
rescue_from ActiveRecord::RecordNotFound, with: :response_not_found
rescue_from ActiveRecord::RecordInvalid, with: :response_invalid

    private
    def response_not_found
        render json: {errors: "Not found"},status: :not_found
    end

    def response_invalid(e)
        render json: {errors: e.errors.full_messages},status: :unprocessable_entity
    end
end
