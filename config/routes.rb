Rails.application.routes.draw do
  resources :visitors
  delete "/photos/:id" => "photos#delete"
  resources :photos
  root to: "visitors#cover"
  devise_for :users
  resources :users
  resources :messages
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get "/contact" => "messages#new"
  get "/thanks" => "messages#thanks"
  get "/portfolio" => "visitors#portfolio"
  get "/cover" => "visitors#cover"
  get "/features" => "visitors#features"
  get "/static_pages" => "visitors#static_pages"
  get "/dynamic_pages" => "visitors#dynamic_pages"
  get "/tech_stack" => "visitors#tech_stack"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
