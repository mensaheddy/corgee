Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
    registrations: "overrides/registrations",
    sessions: "overrides/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :transactions
end
