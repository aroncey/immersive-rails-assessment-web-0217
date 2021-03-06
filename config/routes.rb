Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show, :new, :create]
  resources :episodes, only: [:index, :show] do
    resources :guests
  end
end
