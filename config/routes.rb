Rails.application.routes.draw do
  resources :workout_plans
  devise_for :users
  root to: 'workout_plans#index'
end
