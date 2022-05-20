Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :lists, only: %i[new create show index destroy]  do

    resources :bookmarks, only: %i[create]
  end

  resources :bookmarks, only: :destroy

end
