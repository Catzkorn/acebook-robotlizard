Rails.application.routes.draw do
  devise_for :users, controllers: {
                       sessions: "users/sessions",
                     }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "posts#index"

  resources :posts
  resources :comments
  resources :users

  resources :posts do
    member do
      put "like", to: "posts#like"
      put "unlike", to: "posts#unlike"
    end
  end
end
