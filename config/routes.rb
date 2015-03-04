Rails.application.routes.draw do
  resource :home, only: :show

  root 'homes#show'
end
