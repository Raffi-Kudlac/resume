Resume::Application.routes.draw do
  devise_for :users
  #get "static_pages/home"
  #get "static_pages/contact"
  #get "static_pages/references"
  #get "static_pages/skills"
  
  
  match '/skills', to: 'static_pages#skills', via: 'get'
  #match '/contact', to: 'static_pages#contact', via: 'get'
  match '/references', to: 'static_pages#references', via: 'get'
  match '/portfolio', to: 'static_pages#portfolio', via: 'get'
  match '/contact' => 'contact#new', :via => :get
  match '/contact' => 'contact#create', :via => :post
  
  devise_for :Users , :skip =>[:sessions]
  
  devise_scope :User do
    root to: 'static_pages#home' #, only: [:new]
    get 'signin' => 'devise/sessions#new', :as => :new_User_session
    post 'signin' => 'devise/sessions#create', :as => :User_session
    delete 'signout' => 'devise/sessions#destroy', :as => :destroy_User_session
    match '/sessions/user', to: 'devise/sessions#create', via: :post
  end
  #after_sign_out_path_for 
  #after_sign_in_path for
 # match 'contact' => 'contact#new', :as => 'contact', :via => :get
#	match 'contact' => 'contact#create', :as => 'contact', :via => :post
  
  
  
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
