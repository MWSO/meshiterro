Rails.application.routes.draw do
 resources :users, only: [:show, :edit, :update]
 resources :post_images, only: [:new, :show, :index, :create, :destroy] do
  resources :post_comments, only: [:create, :destroy]
  resource :favorites, only: [:create, :destroy]
 end

  devise_for :users
root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get "about" => "homes#about", as: "about"

end
