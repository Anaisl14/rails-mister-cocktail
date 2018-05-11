Rails.application.routes.draw do
    resources :cocktails, only: [:index, :show, :new, :create] do
    post 'cocktails', to:"cocktails#create"
    resources :doses do
  get 'cocktails/:id', to:"cocktails#show"
  get 'doses/:id', to:"doses#delete"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
end
end
