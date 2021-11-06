Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :customers do
    collection do
      get "missing_email"
      get "alphabetized"
    end
  end

  root to: "customers#index"
end
