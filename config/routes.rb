Rails.application.routes.draw do
  devise_for :users
  get '/' => 'homes#top'
  resources :users, only: [:show, :edit, :create, :destroy, :update] do
    resources :tasks, only: [:index, :show, :new, :edit, :create, :destroy, :update]
    resources :calendars, only:[:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
