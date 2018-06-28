Rails.application.routes.draw do
  resources :page1_posts
  root "page1_posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
