Rails.application.routes.draw do

  root to: 'api/v1/home#first_page'

  namespace :api do
    namespace :v1 do
      root to: 'home#first_page'
      namespace :user do
        post 'sign_in', to: "sessions#sign_in"
        delete 'sign_out', to: "sessions#sign_out"
        get 'profile', to: "sessions#profile"
      end
    end
  end
  
 
end
