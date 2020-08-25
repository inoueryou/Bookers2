Rails.application.routes.draw do
  get 'home/about' => 'homes#about' ,as: "homes_about"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update]
root 'homes#top'
resources :users, only: [:show, :edit, :update, :index]
resources :homes, only: [:about, :top]
end