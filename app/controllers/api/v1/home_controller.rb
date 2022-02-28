class Api::V1::HomeController < Api::AppController
    def first_page
        render json: { success: "true" }
    end
end