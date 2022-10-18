class ApplicationController < ActionController::Base
rescue_from ActiveRecord::RecordNotFound, with: :response_not_found
rescue_from ActiveRecord::RecordInvalid, with: :response_invalid

    private
    def response_not_found
        render json: {errors: "Not found"},status: :not_found
    end

    def response_invalid(e)
        render json: {errors: e.errors.full_messages}
    end
end
