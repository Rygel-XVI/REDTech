Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  namespace :api do
    root to: 'deck#index'
    resources :card, :deck
  end

  root to: 'deck#index'

end
