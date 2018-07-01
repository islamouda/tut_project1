Rails.application.routes.draw do
  get 'education/Edu_P1'
  resources :page1_posts
  root "page1_posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
