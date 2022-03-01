class Api::V1::User::SessionsController < ApplicationController

  def sign_up
    
  end

  def sign_in
  end

  def sign_out
  end

  def profile
    render json: { success: "true", message: "This is your profile" }
  end 

end
