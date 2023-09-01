Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'chatroom#index'
  devise_for :users, controllers: { sessions: "sessions" }
  post 'message', to: 'messages#create'
end
