Rails.application.routes.draw do
  root 'products#index'
  get 'products' => 'products#index'
  get "products/new" => "products#new", as: :new_product
  get "products/:name" => "products#show", as: :product 
  post "products" => "products#create"
  get "products/:name/edit" => "products#edit", as: :edit_product
  patch "products/:id" => "products#update"
  delete "products/:id" => "products#destroy"

  get "users" => "users#index"
  get "users/new" => "users#new" 
  post "users" => "users#create"
  get 'login'     => 'sessions#new'
  post 'login'    => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'products/:product_id/comments' => 'comments#index', as: :product_comments
  post 'products/:product_id/comments' => 'comments#create'
  get 'products/:product_id/comments/new' => 'comments#new', as: :new_product_comment
  get 'products/:product_id/comments/:id/edit' => 'comments#edit', as: :edit_product_comment
  get 'products/:product_id/comments/:id' => 'comments#show', as: :product_comment
  patch 'products/:product_id/comments/:id' => 'comments#update'
  put 'products/:product_id/comments/:id' => 'comments#update'
  delete 'products/:product_id/comments/:id' => 'comments#destroy'



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
