AppComponent::Engine.routes.draw do
  resources :sgames
  resources :games
  resources :teams
  root to: "welcome#index"
  resource :prediction, only: [:new, :create]
end
