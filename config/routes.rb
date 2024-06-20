Rails.application.routes.draw do
  devise_for :users
  get '/' => 'homes#top'
  resources :users, only: [:show, :edit, :create, :destroy, :update] do
    resources :tasks, only: [:index, :show, :new, :create, :edit, :update, :destroy]
    patch 'done_task' => 'tasks#done'
    resources :calendars, only:[:index]
  end
end
