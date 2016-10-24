Rails.application.routes.draw do
  devise_for :users
  resources :users
  mount Thredded::Engine => '/forum'
  #mount Thredded::PersonalizedNavigation::Engine => "/thredded"
  root 'thredded/messageboards#index'
end
