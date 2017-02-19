Rails.application.routes.draw do
  resources :students
  resources :lessons
  devise_for :users
    devise_scope :user do
      authenticated :user do
        root 'lessons#show', as: :authenticated_root
      end
      unauthenticated do
        root 'devise/sessions#new', as: :unauthenticated_root
      end
    end
end
