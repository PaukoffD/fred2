Rails.application.routes.draw do
  devise_for :users
  mount Thredded::Engine => '/forum'
  root 'thredded/messageboards#index'
end
