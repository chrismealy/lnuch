Lnuch::Application.routes.draw do

  get "login"  => "sessions#new",     :as => "login"
  get "logout" => "sessions#destroy", :as => "logout"

  resources :sessions
  resources :spots do
    member do
      get :plus
      get :minus
      get :nix
    end
  end
  root :to => "spots#index"
end
