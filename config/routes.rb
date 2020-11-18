Rails.application.routes.draw do

  get 'users/edit'
  get 'users/show'
  get 'users/index'
  devise_for :users
  root 'homes#top'
  resources :memos
  get 'homes/top' => 'homes#top' , as: 'top'
  post '/guests/guest_sign_in', to: 'guests#new_guest'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
