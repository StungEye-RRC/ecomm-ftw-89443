EcommFtw::Application.routes.draw do
  resources :products, :except => :show
  resources :categories
  
  root to: "store#index
  
  get 'products/:id' => 'store#show', :as => 'product'
  
  get 'search' => 'store#search', :as => 'search'
  
  post 'search_results' => 'store#search_results', :as => 'search_results'
  
end
