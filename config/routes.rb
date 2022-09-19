Rails.application.routes.draw do
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do
    resources :reviews, shallow: true, only: %i[new create destroy]

    collection do
      get :top
    end

    member do
      get :chef
    end
  end
end
