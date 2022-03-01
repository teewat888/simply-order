Rails.application.routes.draw do
 match "/", to: redirect("/api/v1"), via: :all
  namespace :api do
    namespace :v1 do
      root to: 'home#first_page'
      namespace :user do
        post 'sign_up', to: "sessions#sign_up"
        post 'sign_in', to: "sessions#sign_in"
        delete 'sign_out', to: "sessions#sign_out"
        get 'profile', to: "sessions#profile"
      end
    end
  end
  
  match "/404", to: "api/v1/errors#not_found", via: :all
  match "/500", to: "api/v1/errors#internal_server_error", via: :all
  
end
