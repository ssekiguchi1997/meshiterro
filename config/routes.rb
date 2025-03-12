Rails.application.routes.draw do

  devise_for :users

  root to: "homes#top"
  get 'homes/about' => "homes#about" , as: :about

  resources :users, only: [:edit, :show, :update]
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
end
