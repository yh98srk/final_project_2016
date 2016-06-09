Rails.application.routes.draw do
  # Routes for the Journalist resource:
  root "ratings#index"
  # CREATE
  get "/journalists/new", :controller => "journalists", :action => "new"
  post "/create_journalist", :controller => "journalists", :action => "create"

  # READ
  get "/journalists", :controller => "journalists", :action => "index"
  get "/journalists/:id", :controller => "journalists", :action => "show"

  # UPDATE
  get "/journalists/:id/edit", :controller => "journalists", :action => "edit"
  post "/update_journalist/:id", :controller => "journalists", :action => "update"

  # DELETE
  get "/delete_journalist/:id", :controller => "journalists", :action => "destroy"
  #------------------------------

  # Routes for the Article resource:
  # CREATE
  get "/articles/new", :controller => "articles", :action => "new"
  post "/create_article", :controller => "articles", :action => "create"

  # READ
  get "/articles", :controller => "articles", :action => "index"
  get "/articles/:id", :controller => "articles", :action => "show"

  # UPDATE
  get "/articles/:id/edit", :controller => "articles", :action => "edit"
  post "/update_article/:id", :controller => "articles", :action => "update"

  # DELETE
  get "/delete_article/:id", :controller => "articles", :action => "destroy"
  #------------------------------

  # Routes for the Rating resource:
  # CREATE
  get "/ratings/new", :controller => "ratings", :action => "new"
  post "/create_rating", :controller => "ratings", :action => "create"

  # READ
  get "/ratings", :controller => "ratings", :action => "index"
  get "/ratings/:id", :controller => "ratings", :action => "show"

  # UPDATE
  get "/ratings/:id/edit", :controller => "ratings", :action => "edit"
  post "/update_rating/:id", :controller => "ratings", :action => "update"

  # DELETE
  get "/delete_rating/:id", :controller => "ratings", :action => "destroy"
  #------------------------------

  devise_for :users

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
