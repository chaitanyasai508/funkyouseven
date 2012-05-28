Funkyouseven::Application.routes.draw do

  match '/post_images/destroy/:id' => 'post_images#destroy'
  match '/post_images/upload' => 'post_images#upload'
  resources :post_images

  match '/journal' => 'posts#index'
  match '/journal/:short_url' => 'posts#show', :as => :post
  resources :posts


  match '/access_denied' => 'error#access_denied', :as => :access_denied
  match '/not_found' => 'error#not_found', :as => :not_found

  match '/shop/:short_url' => 'shop_sections#show'
  resources :shop_sections

  match '/:short_url' => 'statics#show'
  resources :statics
  resources :welcomes

  devise_for :users

  root :to => 'welcomes#home'


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
