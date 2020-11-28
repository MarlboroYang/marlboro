Rails.application.routes.draw do
  root 'books#index'

  resource :users, controller: 'registrations', only:[:create, :edit, :update] do
    get '/sign_up', action: 'new'
  end
  resource :users, controller: 'sessions', only:[] do
    get '/sign_in', action: 'new'
    post '/sign_in', action: 'create'
    delete '/sign_out', action: 'destroy'
  end
  resources :books
  resources :boards
end
