Todos::Application.routes.draw do
  root to: "todos#index"

  resources "todos", only: [:index, :new, :create]

  get "/signin", to: "sessions#new", as: "signin"
  post "/signin", to: "sessions#create", as: "signin_post"
end
