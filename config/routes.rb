Rails.application.routes.draw do

  resources :cocktails, except: [:destroy, :update, :edit] do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'cocktails#index'
end
