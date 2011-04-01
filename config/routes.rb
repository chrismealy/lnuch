Lnuch::Application.routes.draw do
  resources :spots do
    member do
      get :plus
      get :minus
      get :nix
    end
  end
  root :to => "spots#index"
end
