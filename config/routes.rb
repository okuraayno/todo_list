Rails.application.routes.draw do
  get '/' => 'homes#top'
  devise_for :users

  resources :lists, only: [:index, :show, :new, :edit, :create, :destroy, :update]
  resources :users, only: [:index, :show, :edit, :create, :destroy, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
