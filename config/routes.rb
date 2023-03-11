Rails.application.routes.draw do
  devise_for :cars
  devise_for :employees
  devise_for :owners
  get 'welcome/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'welcome#index'
end
