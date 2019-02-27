Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :reviews, only: [:show]

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
