Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"

  resources :attachments, only: %w(create)

  match :game, to: "home#game", via: :get, as: :game

  resources :plays, only: [:create] do
  end
end
