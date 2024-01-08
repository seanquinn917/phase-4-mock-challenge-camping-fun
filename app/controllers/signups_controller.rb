class SignupsController < ApplicationController


    def create
        signup = Signup.create!(signup_params)
        puts signup.activity.name
        puts signup.activity.difficulty
        puts response.body
        render json: signup.activity, status: :created
    rescue ActiveRecord::RecordInvalid => e
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end



    private

    def signup_params
        params.permit(:time, :camper_id, :activity_id, :name, :difficulty)
    end
end