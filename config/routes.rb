Followme::Application.routes.draw do
  get 'sessions/callback', :to => 'sessions#callback', :as => 'callback'
  match 'friends/notfollowing' => 'friends#notfollowing'
  match 'friends/unfriend/:id' => 'friends#unfriend'
  resources :sessions
  root :to => 'sessions#new'
end
