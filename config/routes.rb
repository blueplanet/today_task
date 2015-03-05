Rails.application.routes.draw do
  resource :home, only: :show

  namespace :api, defaults: { format: :json } do
    resources :tasks, except: %i(new edit show)
  end

  root 'homes#show'
end
