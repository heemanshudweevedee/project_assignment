Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  root to: "projects#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_scope :user do
    authenticated :user do
      root to: "projects#index", as: :authenticated_root

    end

    unauthenticated do
      root to: "devise/sessions#new", as: :unauthenticated_root
    end
  end

  resources :projects
  resources :tasks
end
