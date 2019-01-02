Rails.application.routes.draw do
  root 'articles#index'
  resources :articles do
    resources :comments
  end
end

# resources :articles do
#   resources :comments
# end