Rails.application.routes.draw do
  root 'subs#index'

  resources :subs do
    resources :topics #nest in parent so every topic has a sub id
  end
  
  scope 'topics/:topic_id', as: 'topic' do #adds topic to all paths and keeps topics connected to sub
    resources :comments, only: [:new, :create] #only 2 routes for comments.
  end
end
