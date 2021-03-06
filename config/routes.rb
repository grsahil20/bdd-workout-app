Rails.application.routes.draw do
  get 'home/index'

	root to: "home#index"

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }

  mount ActionCable.server => '/cable'
end
