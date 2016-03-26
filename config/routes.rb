Rails.application.routes.draw do

  resources :scores

  root :to => "pages#show"
end
