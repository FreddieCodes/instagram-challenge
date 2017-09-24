Rails.application.routes.draw do
  devise_for :users
  # get 'posts/index'

  root to: "home#front"

  resources :posts do
    member do
      put "like" => "posts#upvote"
      put "unlike" => "posts#downvote"
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
