Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "apartments#index"
  get "apartments/:id", to: "apartments#show", as: "apartment"
  get "apartments", to: "apartments#index"
end
