Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  root to: "homes#top"
  devise_for :users
  get 'about' => 'homes#about'
  resources :books, only: [:create, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
