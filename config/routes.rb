Rails.application.routes.draw do
  # mount ActionCable.server => '/cable'
  scope "(:locale)", locale: /en/ do
    resources :prompts, only: :index
  end
  root to: 'prompts#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
